class CreateActiveCases < ActiveRecord::Migration[6.0]
  def change
    create_table :active_cases do |t|
      t.integer  :currently_infected_patients
      t.integer :mild_condition
      t.integer :serious_or_critical_condition
      t.timestamps
    end
  end
end
