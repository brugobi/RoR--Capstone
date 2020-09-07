require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test "should get upvote" do
    get votes_upvote_url
    assert_response :success
  end

  test "should get downvote" do
    get votes_downvote_url
    assert_response :success
  end

end
