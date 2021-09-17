class AddJobSearchTitleIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :JobSearchTitle_id, :integer
    add_index :jobs, :JobSearchTitle_id
  end
end
