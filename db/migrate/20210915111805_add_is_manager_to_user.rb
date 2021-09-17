class AddIsManagerToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_manager, :boolean
  end
end
