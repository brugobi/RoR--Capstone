class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name
  end
end
