require 'rails_helper'
require 'faker'
require './spec/support/factories_helpers'
require './spec/support/session_helpers'

RSpec.describe 'Create new articles', type: :feature do
  include FactoriesHelpers
  include SessionsHelper
  let(:user) { User.create user_data }
  let(:category) { Category.create category_data }

  scenario 'Does not allow unauthenticated users to create articles' do
    visit new_article_path
    expect(page).to have_current_path(user_session_path)
  end
end
