class AddTotalDeaths1mPopToCountriesData < ActiveRecord::Migration[6.0]
  def change
    add_column :countries_data, :total_deaths_1m_pop, :integer
  end
end
