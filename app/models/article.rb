class Article < ApplicationRecord
  belongs_to :user, optional: true #to fix a issue with: user must to exist
  has_one_attached :photo
end
