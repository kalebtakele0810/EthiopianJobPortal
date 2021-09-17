class CreateJobSearchTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :job_search_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
