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

my_category = Category.create([{name: 'Outside', priority: true}, {name: 'Food', priority: true}, {name: 'City', priority: true},{name: 'Sports', priority: true}, {name: 'Monument', priority: true}])

bruna = User.create name: 'Bruna'

p "Created #{Category.count} categories"

# create the article using that category
article = Article.create([
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[0],
    author_id: 4,
    # Imagem de 11417994 por Pixabay
    image: 'https://cdn.pixabay.com/photo/2019/01/27/22/33/chipmunk-3959206_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[0],
    author_id: 4,
    # Imagem de InsightPhotography por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2019/11/12/18/41/buildings-4621816_960_720.jpg'
    #photo: File.open('app/assets/images/buildings.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[0],
    author_id: 4,
    # Imagem de Jaime Reimer por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2019/08/02/23/09/man-4380804_960_720.jpg'
    #photo: File.open('app/assets/images/braids.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[0],
    author_id: 4,
    # Imagem de Free-Photos por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2014/08/21/09/28/brown-bear-423202_960_720.jpg'
    #photo: File.open('app/assets/images/braids.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[1],
    author_id: 4,
    # Imagem de Free-Photos por Pixabay
    image: 'https://cdn.pixabay.com/photo/2016/02/19/10/59/espresso-1209522_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[1],
    author_id: 4,
    # Imagem de photosforyou por Pixabay
    image: 'https://cdn.pixabay.com/photo/2016/12/14/22/14/skeleton-1907613_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
   {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[1],
    author_id: 4,
    # Imagem de Sherry Galey por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2015/07/11/14/45/berries-840832_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[1],
    author_id: 4,
    # Imagem de adamkontor por Pixabay
    image: 'https://cdn.pixabay.com/photo/2018/10/21/20/35/lanzarote-3763773_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[2],
    author_id: 4,
    # Imagem de My pictures are CC0. When doing composings: por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2018/01/27/23/46/toronto-3112508_960_720.jpg'
    #photo: File.open('app/assets/images/toronto.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[2],
    author_id: 4,
    # Imagem de Noel Bauza por Pixabay
    image: 'https://cdn.pixabay.com/photo/2016/02/07/19/49/snow-1185469_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[2],
    author_id: 4,
    # Imagem de Irene K-s por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2018/06/22/13/29/ottawa-3490766_960_720.jpg'
    #photo: File.open('app/assets/images/toronto.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[2],
    author_id: 4,
    # Imagem de Free-Photos por Pixabay
    image: 'https://cdn.pixabay.com/photo/2015/03/26/10/00/montreal-690737_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[3],
    author_id: 4,
    # Imagem de Ralf Schnabel por Pixabay
    image: 'https://cdn.pixabay.com/photo/2017/01/12/08/09/heliskiing-heli-skiing-1974015_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[3],
    author_id: 4,
    # Imagem de David Mark por Pixabay
    image: 'https://cdn.pixabay.com/photo/2013/04/05/14/12/hockey-100729_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[3],
    author_id: 4,
    # Imagem de Ri Butov por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2020/01/13/23/15/snowboarding-4763731_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[3],
    author_id: 4,
    # Imagem de Keith Johnston por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2016/06/16/22/40/football-game-1462322_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[4],
    author_id: 4,
    # Imagem de lumix2004 por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2016/11/30/15/00/lighthouse-1872998_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[4],
    author_id: 4,
    # Imagem de Kranich17 por Pixabay 
    image: 'https://cdn.pixabay.com/photo/2019/07/22/20/05/totem-pole-4355956_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[4],
    author_id: 4,
    # Imagem de Aurore Duwez por Pixabay
    image: 'https://cdn.pixabay.com/photo/2017/04/24/17/25/frontenac-2257154_960_720.jpg'
    #photo: File.open('app/assets/images/espresso.jpg')
  },
  {
    title: Faker::Lorem.sentence(3, false, 0).chop,  
    content: Faker::Lorem.paragraphs, 
    category: my_category[4],
    author_id: 4,
    # Imagem de Jeff Leonhardt por Pixabay
    image: 'https://cdn.pixabay.com/photo/2016/08/13/07/20/niagara-1590345_960_720.jpg'
    #photo: File.open('app/assets/images/buildings.jpg')
  }]
)


# image.attach(io: File.open('app/assets/images/buildings.jpg'), filename: 'buildings.jpg')
p "Created #{Article.count} articles"


