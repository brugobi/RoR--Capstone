class Vote < ApplicationRecord
  belongs_to :user_id
  belongs_to :article_id
end
