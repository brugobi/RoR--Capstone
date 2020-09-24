require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'associations tests' do
    it { should belong_to(:user) }
    it { should belong_to(:article) }
  end

  describe 'validations tests' do
    it { is_expected.to validate_uniqueness_of(:user_id).scoped_to(:article_id) }
  end
end