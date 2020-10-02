require 'faker'

module FactoriesHelpers
  def article_data
    {
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph,
      image: 'https://cdn.pixabay.com/photo/2020/09/27/09/34/cats-5606202_960_720.jpg'
    }
  end

  def user_data
    {
      name: Faker::Name.name,
      email: 'exemple@email',
      password: 'password',
      password_confirmation: 'password'
    }
  end

  def category_data
    {
      name: Faker::Lorem.sentence,
      priority: true
    }
  end
end
