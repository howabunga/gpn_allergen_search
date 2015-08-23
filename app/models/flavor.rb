class Flavor < ActiveRecord::Base

  validates :name, :presence => true

  has_many :products , :class_name => "Product", :foreign_key => "flavor_id"

end
