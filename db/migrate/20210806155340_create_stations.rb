class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :station_name
      t.string :station_walk

      t.timestamps
    end
  end
end
