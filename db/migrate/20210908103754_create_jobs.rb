class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :Salary
      t.date :postedDate
      t.date :deadlineDate
      t.text :discription
      t.text :jobRequirements
      t.text :howtoApply
      t.integer :numberOfviews

      t.timestamps
    end
  end
end
