class Allergeninfo < ActiveRecord::Base

  validates :product_id, :presence => true
  validates :allergen_id, :presence => true


  belongs_to :allergen , :class_name => "Allergen", :foreign_key => "allergen_id"
  belongs_to :product , :class_name => "Product", :foreign_key => "product_id"

end
