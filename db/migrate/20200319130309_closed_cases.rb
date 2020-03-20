class ClosedCases < ActiveRecord::Migration[6.0]
  def change
    create_table :closed_cases do |t|
      t.integer  :cases_which_had_outcome
      t.integer :recoverd_or_discharged
      t.integer :deaths
      t.timestamps
    end
  end
end
