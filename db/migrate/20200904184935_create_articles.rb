class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.text :image
      t.integer :author_id

      t.timestamps
    end
  end
end
