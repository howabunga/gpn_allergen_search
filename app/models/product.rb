class Product < ActiveRecord::Base

  validates :image, :presence => true
  validates :name, :presence => true
  validates :brand_id, :presence => true
  validates :flavor_id, :presence => true
  validates :delivery_id, :presence => true

mount_uploader :image, ImageUploader

has_many :favorites , :class_name => "Favorite", :foreign_key => "product_id"
has_many :allergeninfos , :class_name => "Allergeninfo", :foreign_key => "product_id"
has_many :favorites , :class_name => "Favorite", :foreign_key => "product_id"
belongs_to :flavor
belongs_to :brand , :class_name => "Brand", :foreign_key => "brand_id"
belongs_to :delivery
has_many :allergens, :through => :allergeninfos

end
