class AddIndexToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :createdBy_id, :integer
    add_index :jobs, :createdBy_id
  end
end
