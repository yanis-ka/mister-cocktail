# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Cocktail.destroy_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredient = JSON.parse(user_serialized)

Dose.destroy_all
Ingredient.destroy_all

ingredient['drinks'].each do |i|
  Ingredient.create!(name: i['strIngredient1'])
end

Cocktail.create(name: 'mojito', price: 10)
Cocktail.create(name: 'virgin mojito', price: 11)
Cocktail.create(name: 'sex on the beach', price: 12)
Cocktail.create(name: 'pina colada', price: 13)
Cocktail.create(name: 'margarita', price: 14)
Cocktail.create(name: 'diabolo grenadine', price: 15)
Cocktail.create(name: "Fleur d'amour", price: 16)
Cocktail.create(name: 'Bora bora', price: 17)
Cocktail.create(name: 'Americano', price: 18)
Cocktail.create(name: 'Shirley temple', price: 20)
