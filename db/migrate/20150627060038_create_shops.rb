class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shop_name,null: false
      t.integer :tel, null: false
      t.string :address, null: false
      t.text :url, null: false

      t.timestamps null: false
    end
    add_index :shops, :url, unique: true
  end
end
