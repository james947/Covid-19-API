require "spec_helper"


RSpec.describe ApplicationController, type: :controller do
  describe "All Cases" do
    before do
      get 'api/v1/all_cases'
    end

    it 'respond should respond with 200' do
      expect(last_response.status).to eq(200)
    end
  end

  describe "Active Cases" do
    before do
      get 'api/v1/active_cases'
    end

    it 'should respond with 200' do
      expect(last_response.status).to eq(200)
    end
  end

  describe "Closed Cases" do
    before do
      get 'api/v1/closed_cases'
    end

    it 'should respond with 200' do
      expect(last_response.status).to eq(200)
    end
  end

  describe "Countries Data" do
    before do
      get 'api/v1/countries_data'
    end

    it 'should respond with 200' do
      expect(last_response.status).to eq(200)
    end
  end
end
