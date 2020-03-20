require_relative '../../app/models/all_cases'
require_relative '../../app/models/active_cases'
require_relative '../../app/models/closed_cases'
require_relative '../../app/models/countries_data'

desc "Scraps all corona virus data"
task :scrap_data do
    class Scrapper
        require 'Nokogiri'
        require 'open-uri'

        attr_accessor :parse_page

        def initialize
            @parse_page ||= 
            ::Nokogiri::HTML.parse(
                open(
                    'https://www.worldometers.info/coronavirus/'
                    )
                )
        end
    
        # this method should return all total cases + deaths + recovered
        def get_cases
            # total cases
            total_cases_array  = parse_page.css('#maincounter-wrap')
            total_cases_deaths_recovered = total_cases_array.map{ |arr| arr.css('span').text.strip.tr(",","") }
            AllCases.create(total_cases: total_cases_deaths_recovered[0], total_deaths:total_cases_deaths_recovered[1], total_recovered: total_cases_deaths_recovered[2])
        end
    
        #returns all active cases of infected patients + mild condition + serious or critical
        def get_active_cases
           currently_infected_patients = parse_page.css('.panel_front').first.css('.number-table-main').text.strip.tr(",","")
           patients_in_mild_and_critical_condition= parse_page.css('.panel_front').first.css('.number-table').map{|div| div.content.strip.tr(",","")}
           ActiveCases.create(currently_infected_patients: currently_infected_patients, mild_condition: patients_in_mild_and_critical_condition[0], serious_or_critical_condition: patients_in_mild_and_critical_condition[1])
        end
    
        def get_closed_cases
            cases_with_outcomes = parse_page.css('.panel_front').last.css('.number-table-main').text.strip.tr(",","")
            recovered_and_death = parse_page.css('.panel_front').last.css('.number-table').map{|div| div.content.strip.tr(",","")}
            ClosedCases.create(cases_which_had_outcome: cases_with_outcomes, recovered_or_discharged: recovered_and_death[0], deaths:recovered_and_death[1])
        end

        def get_countries_data
            CountriesData.where('latest IS true').find_each(batch_size:1000) do |batch|
                batch.update(latest:false)
            end
            arr = []
            parse_page.css('#main_table_countries_today tbody').each do |tr|
                tr.css('td').each do |tdata|
                    arr.push(tdata.text.strip.tr(",", ""))
                end
            end
            arr.each_slice(9) do |val|

                CountriesData.create(
                    country_or_other: val[0],
                    total_cases:val[1],
                    new_cases:val[2],
                    total_deaths:val[3], 
                    new_deaths:val[4], total_recovered:val[5],
                    active_cases:val[6],
                    serious_or_critical:val[7],
                    total_cases_1m_pop:val[8],
                    latest: true
                )
            end
        end
    
        Scrapper = Scrapper.new
        cases = Scrapper.get_cases
        active_cases = Scrapper.get_active_cases
        closed_cases = Scrapper.get_closed_cases
        countries_data = Scrapper.get_countries_data
    end
end