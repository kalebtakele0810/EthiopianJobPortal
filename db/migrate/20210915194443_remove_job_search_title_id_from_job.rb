class RemoveJobSearchTitleIdFromJob < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :JobSearchTitle_id, :string
  end
end
