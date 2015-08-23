class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :allergen_id
      t.integer :product_id
      t.integer :user_id

      t.timestamps

    end
  end
end
