class ChangeContinentTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :countries_data, :continent, :string
  end
end
