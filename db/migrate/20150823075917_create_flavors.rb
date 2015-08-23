class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :category
      t.string :name

      t.timestamps

    end
  end
end
