 # spec/spec_helper.rb
require 'rack/test'
require 'rspec'
require 'shoulda/matchers'

ENV['RACK_ENV'] = 'test'


require File.expand_path '../../app/controllers/application_controller.rb', __FILE__


module RackAPP
    include Rack::Test::Methods
    def app
        @app ||= Rack::Builder.parse_file(File.expand_path '../../config.ru', __FILE__).first
    end
    @app.methods
end

Shoulda::Matchers.configure do |config|
    config.integrate do |with|
        with.test_framework :rspec
    end
end


RSpec.configure do |config|
    config.include RackAPP
    config.include(Shoulda::Matchers::ActiveRecord, type: :model)
    config.include(Shoulda::Matchers::ActionController)


    config.expect_with :rspec do |expectations|
      expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    end

    config.mock_with :rspec do |mocks|
      mocks.verify_partial_doubles = true
    end
end
