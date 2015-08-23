class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :flavor_id
      t.integer :brand_id
      t.integer :delivery_id
      t.string :name
      t.string :image

      t.timestamps

    end
  end
end
