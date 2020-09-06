# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Category.destroy_all

# create a category first
# my_category = Category.create(name: 'Rails')
# create the article using that category
# article = Article.create(title: 'A rails blog', category: my_category)
# Imagem de Free-Photos por Pixabay
# create a category first

my_category = Category.create([{name: 'Outside', priority: true}, {name: 'Food', priority: true}, {name: 'City', priority: true}])

p "Created #{Category.count} categories"

# create the article using that category
article = Article.create([
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[0],
    photo: File.open('app/assets/images/toronto.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[1],
    photo: File.open('app/assets/images/braids.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[2],
    photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[1],
    photo: File.open('app/assets/images/buildings.jpg')
  }]
)


# image.attach(io: File.open('app/assets/images/buildings.jpg'), filename: 'buildings.jpg')
p "Created #{Article.count} articles"


