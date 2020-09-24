require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations tests' do
    it { should belong_to(:author).class_name(User.name) }
    it { should belong_to(:category) }
    it { should have_many(:votes) }
  end

  describe 'validations tests' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(1).is_at_most(150) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:category_id) }
  end
end