class ChangeRecoverdToRecovered < ActiveRecord::Migration[6.0]
  def change
    rename_column :closed_cases, :recoverd_or_discharged, :recovered_or_discharged
  end
end
