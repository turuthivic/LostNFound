class AddColumnToLostItems < ActiveRecord::Migration[5.0]
  def change
    add_column :lost_items, :user_id, :integer
  end
end
