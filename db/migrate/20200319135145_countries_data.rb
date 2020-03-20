class CountriesData < ActiveRecord::Migration[6.0]
  def change
    create_table :countries_data do |t|
      t.string  :country_or_other
      t.integer :total_cases
      t.integer :new_cases
      t.integer :total_deaths
      t.integer :new_deaths
      t.integer :total_recovered
      t.integer :active_cases
      t.integer :serious_or_critical
      t.integer :total_cases_1m_pop
      t.timestamps
    end
  end
end
