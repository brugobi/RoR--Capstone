class RemoveActiveFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :active, :boolean
  end
end
