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

cocktail = Cocktail.create(name: 'mojito', price: 10)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622020785/80255_w1024h768c1cx2774cy1849_yo257x.webp')
cocktail.photo.attach(io: file, filename: 'mojito', content_type: 'image/png')

cocktail = Cocktail.create(name: 'virgin mojito', price: 11)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022896/119_virginmojito_jgnzkp.jpg')
cocktail.photo.attach(io: file, filename: 'virgin mojito', content_type: 'image/png')

cocktail = Cocktail.create(name: 'sex on the beach', price: 12)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022435/80336_w1024h768c1cx1859cy2900_d6heew.webp')
cocktail.photo.attach(io: file, filename: 'sex on the beach', content_type: 'image/png')

cocktail = Cocktail.create(name: 'pina colada', price: 13)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622020869/80258_w1024h768c1cx974cy1535_mky6lo.webp')
cocktail.photo.attach(io: file, filename: 'pina colada', content_type: 'image/png')

cocktail = Cocktail.create(name: 'margarita', price: 14)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622020907/80288_w1024h768c1cx1473cy1313_jizfca.webp')
cocktail.photo.attach(io: file, filename: 'margarita', content_type: 'image/png')

cocktail = Cocktail.create(name: 'diabolo grenadine', price: 15)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022505/118429_w1024h768c1cx1058cy708_r7zsme.webp')
cocktail.photo.attach(io: file, filename: 'diabolo grenadine', content_type: 'image/png')

cocktail = Cocktail.create(name: "Fleur d'amour", price: 16)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022597/118137_w1024h768c1cx707cy1060_zgqbgc.webp')
cocktail.photo.attach(io: file, filename: "Fleur d'amour", content_type: 'image/png')

cocktail = Cocktail.create(name: 'Bora bora', price: 17)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022657/118806_w1024h768c1cx1060cy707_ixn6eh.webp')
cocktail.photo.attach(io: file, filename: 'Bora bora', content_type: 'image/png')

cocktail = Cocktail.create(name: 'Americano', price: 18)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022713/81649_w1024h768c1cx1766cy2888_moxc05.webp')
cocktail.photo.attach(io: file, filename: 'Americano', content_type: 'image/png')

cocktail = Cocktail.create(name: 'Shirley temple', price: 20)
file = URI.open('https://res.cloudinary.com/dg2w1gmnm/image/upload/v1622022835/cocktail-shirley-temple_aotyaq.jpg')
cocktail.photo.attach(io: file, filename: 'Shirley temple', content_type: 'image/png')

