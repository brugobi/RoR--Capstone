class Article < ApplicationRecord
  belongs_to :user, optional: true # to fix a issue with: user must to exist
  has_one_attached :photo
  belongs_to :category # class_name: 'Article', foreign_key: 'category_id'
  has_many :votes, dependent: :destroy

  scope :belong_to_category, -> {order(:title).limit(4)}
  scope :with_votes, -> { select('articles.*, COUNT(votes.user_id) as votes_count').left_joins(:votes).group(:id) }
  scope :most_voted, -> { with_votes.order(votes_count: :desc) }
  
  validates :title, :content, presence: true
end
