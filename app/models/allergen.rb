class Allergen < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  has_many :favorites , :class_name => "Favorite", :foreign_key => "allergen_id"
has_many :allergeninfos , :class_name => "Allergeninfo", :foreign_key => "allergen_id"
has_many :favorites , :class_name => "Favorite", :foreign_key => "allergen_id"

end
