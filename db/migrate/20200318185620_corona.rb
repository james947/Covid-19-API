class Corona < ActiveRecord::Migration[6.0]
  def change
    create_table :corona do |t|
      t.integer  :total_cases
      t.integer :total_deaths
      t.integer :total_recovered
      t.integer :total_currently_infected
      t.integer :total_in_mild_condition
      t.integer :total_cases_which_had_outcomes
      t.integer :total_recovered_discharged
      t.timestamps
    end
  end
end
