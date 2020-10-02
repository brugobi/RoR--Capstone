json.extract! article, :id, :title, :content, :image, :author_id, :created_at, :updated_at
json.url article_url(article, format: :json)
