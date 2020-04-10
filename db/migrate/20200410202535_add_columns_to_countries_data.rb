class AddColumnsToCountriesData < ActiveRecord::Migration[6.0]
  def change
    add_column :countries_data, :total_tests, :integer
    add_column :countries_data, :tests_1m_pop, :integer
    add_column :countries_data, :continent, :integer
  end
end
