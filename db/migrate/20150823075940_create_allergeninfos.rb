class CreateAllergeninfos < ActiveRecord::Migration
  def change
    create_table :allergeninfos do |t|
      t.integer :allergen_id
      t.integer :product_id

      t.timestamps

    end
  end
end
