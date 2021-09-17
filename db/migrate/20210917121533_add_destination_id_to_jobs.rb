class AddDestinationIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :destination_id, :integer
    add_index :jobs, :destination_id
  end
end
