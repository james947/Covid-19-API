require 'sinatra/base'

class ApplicationController < Sinatra::Base
    require 'json'
    require 'pry'

    before do
        content_type :json
    end

    get '/' do

    end

    get '/api/v1/all_cases' do
        all_cases = AllCases.where('latest IS true')
        all_cases.to_json
    end

    get '/api/v1/active_cases' do
        active_cases = ActiveCases.where('latest IS true')
        active_cases.to_json
    end

    get '/api/v1/closed_cases' do
        closed_cases = ClosedCases.where('latest IS true')
        closed_cases.to_json
    end

    get '/api/v1/countries' do
        if params[:country]
            countries_data = CountriesData.country(params[:country].capitalize).where('latest IS true')
        else
            countries_data=CountriesData.where('latest IS true')
        end
         countries_data.to_json
    end
end
