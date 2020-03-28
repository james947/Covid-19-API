class ChangeFirstCaseColumnTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :countries_data, :first_case, :string
  end
end

