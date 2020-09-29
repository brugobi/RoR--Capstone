require 'faker'

module FactoriesHelpers
  def article_data
    {
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph
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
