class Category < ApplicationRecord
  has_many :articles, -> { order(created_at: :desc) }
  validates_uniqueness_of :name, case_sensitive: false

  scope :order_by_date, -> { order(created_at: :desc) }
end
