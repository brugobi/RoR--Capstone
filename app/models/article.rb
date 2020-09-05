class Article < ApplicationRecord
  belongs_to :user, optional: true #to fix a issue with: user must to exist
  has_one_attached :photo
  belongs_to :category, class_name: 'Article', foreign_key: 'category_id'
end
