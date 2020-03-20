class DestroyCorona < ActiveRecord::Migration[6.0]
  def change
    drop_table :corona
  end
end
