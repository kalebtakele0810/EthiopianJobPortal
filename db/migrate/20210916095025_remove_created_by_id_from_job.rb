class RemoveCreatedByIdFromJob < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :createdBy_id, :integer
  end
end
