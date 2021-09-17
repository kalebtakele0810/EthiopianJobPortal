class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :Country
      t.string :Region
      t.string :City

      t.timestamps
    end
  end
end
