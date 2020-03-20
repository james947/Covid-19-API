class AddLatestToAllActiveClosedCases < ActiveRecord::Migration[6.0]
  AFFECTED_TABLES = [:all_cases, :active_cases, :closed_cases]
  def change
    AFFECTED_TABLES.each do |table_name|
      add_column table_name, :latest, :boolean, default: false
    end
  end
end
