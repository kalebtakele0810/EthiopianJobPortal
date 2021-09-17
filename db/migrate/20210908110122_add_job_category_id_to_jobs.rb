class AddJobCategoryIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :JobCategory_id, :integer
    add_index :jobs, :JobCategory_id
  end
end
