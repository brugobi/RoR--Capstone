class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, class_name: 'Article', foreign_key: 'author_id'
  has_many :votes, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
end
