class CreateCareerLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :career_levels do |t|
      t.string :name

      t.timestamps
    end
  end
end
