class AddVoteCounterToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :votes_count, :integer, default: 0
  end
end
