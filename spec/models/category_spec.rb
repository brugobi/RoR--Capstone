require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations tests' do
    it { should have_many(:articles) }
  end

  describe 'validations tests' do
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end