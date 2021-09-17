class AddIsApprovedToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :is_approved, :boolean
  end
end
