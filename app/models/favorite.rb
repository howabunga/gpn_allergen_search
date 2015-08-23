class Favorite < ActiveRecord::Base

  belongs_to :product , :class_name => "Product", :foreign_key => "product_id"
belongs_to :allergen , :class_name => "Allergen", :foreign_key => "allergen_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :allergen , :class_name => "Allergen", :foreign_key => "allergen_id"
belongs_to :product

end
