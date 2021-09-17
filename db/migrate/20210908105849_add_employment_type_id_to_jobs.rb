class AddEmploymentTypeIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :EmployementType_id, :integer
    add_index :jobs, :EmployementType_id
  end
end
