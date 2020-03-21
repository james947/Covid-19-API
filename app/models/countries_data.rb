class CountriesData < ActiveRecord::Base
    scope :country, ->(country) { where(country_or_other: country)}
end