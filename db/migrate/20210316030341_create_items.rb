class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :item_name, null: false
      t.integer :price, null: false
      t.text    :information, null: false
      t.integer :item_status_id, null: false
      t.integer :category_id, null: false
      t.integer :inner_diameter_id, null: false
      t.integer :outer_diameter_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
