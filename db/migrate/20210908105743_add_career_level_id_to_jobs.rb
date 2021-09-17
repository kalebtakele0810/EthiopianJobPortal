class AddCareerLevelIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :CareerLevel_id, :integer
    add_index :jobs, :CareerLevel_id
  end
end
