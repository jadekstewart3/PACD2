class DropTableUserLists < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_lists
  end
end
