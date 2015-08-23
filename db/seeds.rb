# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brand_hashes = [
  { :name => "ON" },
  { :name => "BSN" },
  { :name => "ABB" },
  { :name => "Nutramino" },
  { :name => "IsoPure" },
  { :name => "TruSource" },
]

brand_hashes.each do |brand_hash|
  brand = Brand.new
  brand.name = brand_hash[:name]
  brand.save
end

puts "There are now #{Brand.count} brands in the database."

allergen_hashes = [
  { :name => "Milk" },
  { :name => "Soy" },
  { :name => "Egg" },
  { :name => "Wheat" },
  { :name => "Peanuts" },
  { :name => "Tree Nuts" },
  { :name => "Shellfish" },
{ :name => "Fish" },
{ :name => "None" },
]

allergen_hashes.each do |allergen_hash|
  allergen = Allergen.new
  allergen.name = allergen_hash[:name]
  allergen.save
end

puts "There are now #{Allergen.count} allergens in the database."

delivery_hashes = [
  { :name => "Powder" },
  { :name => "RTD (Ready to Drink)" },
  { :name => "Tablet" },
  { :name => "Capsule" },
  { :name => "Softgel" },
  { :name => "Bar" },
]

delivery_hashes.each do |delivery_hash|
  delivery = Delivery.new
  delivery.name = delivery_hash[:name]
  delivery.save
end

puts "There are now #{Delivery.count} deliveries in the database."

flavor_hashes = [
  { :name => "Vanilla Bean", :category => "Vanilla" },
  { :name => "Vanilla Ice Cream", :category => "Vanilla" },
  { :name => "Velocity Vanilla", :category => "Vanilla" },
  { :name => "Extreme Milk Chocolate", :category => "Chocolate" },
  { :name => "Double Rich Chocolate", :category => "Chocolate" },
  { :name => "Chocolate Shake", :category => "Chocolate" },
  { :name => "Turbo Chocolate", :category => "Chocolate" },
  { :name => "Delicious Strawberry", :category => "Strawberry" },
  { :name => "Supercharged Strawberry", :category => "Strawberry" },
  { :name => "Strawberry Shake", :category => "Strawberry" },
]

flavor_hashes.each do |flavor_hash|
  flavor = Flavor.new
  flavor.name = flavor_hash[:name, :category]
  flavor.save
end

puts "There are now #{Flavor.count} flavors in the database."
