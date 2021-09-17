class AddIsEmployerToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_employer, :boolean
  end
end
