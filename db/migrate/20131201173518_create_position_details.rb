class CreatePositionDetails < ActiveRecord::Migration
  def change
    create_table :position_details do |t|
      t.string :phone_model
      t.string :carrier
      t.string :signal
      t.string :latitude
      t.string :longitude
      t.string :timestamp

      t.timestamps
    end
  end
end
