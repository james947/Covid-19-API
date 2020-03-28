class Add1stCaseToCountriesData < ActiveRecord::Migration[6.0]
  def change
    add_column :countries_data, :first_case, :integer
  end
end
