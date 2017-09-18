class CreateLostItems < ActiveRecord::Migration[5.0]
  def change
    create_table :lost_items do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
