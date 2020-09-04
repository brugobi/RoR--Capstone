class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, class_name: 'Article', foreign_key: 'author_id'
  #validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
end
