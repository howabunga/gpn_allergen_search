class Delivery < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  has_many :products , :class_name => "Product", :foreign_key => "delivery_id"

end
