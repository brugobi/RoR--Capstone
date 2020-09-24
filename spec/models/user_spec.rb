require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations tests' do
    it { should have_many(:articles).with_foreign_key(:author_id) }
    it { should have_many(:votes) }
    it { should have_many(:voted_articles).through(:votes).source(:article) }
  end

  describe 'validations tests' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:name).is_at_most(100) }
  end
end