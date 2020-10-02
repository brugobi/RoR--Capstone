class AddVoteCounterToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :votes_count, :integer, default: 0
  end
end
