# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Category.destroy_all

# 5.times do |index|
#   Article.create!(
#     title: Faker::Lorem.sentence(3, false, 0).chop,
#     content: Faker::Lorem.paragraphs,
#     image: 'https://avatars3.githubusercontent.com/u/60522356?s=400&u=c26966471d76a25d871027b43c0282504e04caca&v=4'
#   )
# end

# create a category first
# my_category = Category.create(name: 'Rails')
# create the article using that category
# article = Article.create(title: 'A rails blog', category: my_category)

# create a category first
# p "Created #{Category.count} categories"
my_category = Category.create([{name: 'Outside', priority: true}, {name: 'Food', priority: true}, {name: 'City', priority: true}])
# create the article using that category
article = Article.create([
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    image: 'https://avatars3.githubusercontent.com/u/60522356?s=400&u=c26966471d76a25d871027b43c0282504e04caca&v=4', 
    category: my_category[0]
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    image: 'https://avatars3.githubusercontent.com/u/60522356?s=400&u=c26966471d76a25d871027b43c0282504e04caca&v=4', 
    category: my_category[1]
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    image: 'https://avatars3.githubusercontent.com/u/60522356?s=400&u=c26966471d76a25d871027b43c0282504e04caca&v=4', 
    category: my_category[2]
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    image: 'https://avatars3.githubusercontent.com/u/60522356?s=400&u=c26966471d76a25d871027b43c0282504e04caca&v=4', 
    category: my_category[1]
  }]
)



p "Created #{Article.count} articles"


