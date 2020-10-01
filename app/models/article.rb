class Article < ApplicationRecord
  belongs_to :author, class_name: User.name
  belongs_to :user, optional: true # to fix a issue with: user must to exist
  has_one_attached :photo
  belongs_to :category
  has_many :votes, dependent: :destroy

  scope :belong_to_category_by_date, -> { order(created_at: :desc) } 
  scope :belong_to_category, -> { belong_to_category_by_date.order(:title).limit(4) } 
  scope :with_votes, -> { select('articles.*, COUNT(votes.user_id) as votes_count').left_joins(:votes).group(:id) }
  scope :most_voted, -> { with_votes.order(votes_count: :desc) }

  validates :title, presence: true, length: { maximum: 100 }
  validates :image, :category_id, presence: true
  validates :content, presence: true, length: { maximum: 300 }

  # Method that incrementes votes_count cache
  def self.increment_vote_cache(article_id)
    article = find(article_id)
    article.update_attributes(votes_count: article.votes_count + 1)
  end
end
