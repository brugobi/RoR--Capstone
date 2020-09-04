class Article < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :photo
end
