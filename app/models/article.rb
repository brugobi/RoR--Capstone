class Article < ApplicationRecord
  belongs_to :user, optional: true # to fix a issue with: user must to exist
  has_one_attached :photo
  belongs_to :category # class_name: 'Article', foreign_key: 'category_id'
  has_many :votes, dependent: :destroy

  scope :belong_to_category, -> {order(:title).limit(4)}
  # scope :belong_to_category, -> {order(:title).group(:votes_count).limit(4)}
end
