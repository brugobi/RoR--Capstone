class Vote < ApplicationRecord
  after_create :increment_votes
  validates :user_id, uniqueness: { scope: :article_id }
  belongs_to :user, counter_cache: true
  belongs_to :article

  private
  # After creating a Vote row the vote cache will be update at Article table
  def increment_votes
    Article.increment_vote_cache(article_id)
  end
end
