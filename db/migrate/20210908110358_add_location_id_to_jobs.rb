class AddLocationIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :Location_id, :integer
    add_index :jobs, :Location_id
  end
end
