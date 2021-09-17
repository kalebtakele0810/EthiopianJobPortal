class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :createdBy_id, :integer
    add_index :users, :createdBy_id
  end
end
