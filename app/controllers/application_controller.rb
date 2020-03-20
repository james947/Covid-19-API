class ApplicationController < Sinatra::Base
    require 'json'
    require 'pry'

    before do
        content_type :json 
    end

    get '/all_cases' do
        all_cases = AllCases.all
        { data: all_cases }.to_json
    end

    get '/active_cases' do
        active_cases = ActiveCases.all
        { data: active_cases }.to_json
    end

    get '/closed_cases' do
        closed_cases = ClosedCases.all
        { data: closed_cases }.to_json
    end

    get '/countries_data' do        
         countries_data = CountriesData.where('latest IS true')
        { data: countries_data }.to_json
    end  
end
  