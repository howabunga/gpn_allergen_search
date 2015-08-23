class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

         has_many :favorites , :class_name => "Favorite", :foreign_key => "user_id"
has_many :allergens, :through => :favorites
has_many :products, :through => :favorites

end
