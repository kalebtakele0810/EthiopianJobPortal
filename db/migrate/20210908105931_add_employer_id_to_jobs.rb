class AddEmployerIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :Employer_id, :integer
    add_index :jobs, :Employer_id
  end
end
