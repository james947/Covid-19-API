class CreateAllCases < ActiveRecord::Migration[6.0]
  def change
    create_table :all_cases do |t|
      t.integer  :total_cases
      t.integer :total_deaths
      t.integer :total_recovered
      t.timestamps
    end
  end
end
