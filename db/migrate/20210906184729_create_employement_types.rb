class CreateEmployementTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :employement_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
