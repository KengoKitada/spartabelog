class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.integer :tel
      t.string :address
      t.text :url

      t.timestamps null: false
    end
  end
end
