class CreatePositionDetails < ActiveRecord::Migration
  def change
    create_table :position_details do |t|
      t.string :phone_model
      t.string :carrier
      t.string :sinal
      t.string :latitude
      t.string :longitute
      t.string :timestamp

      t.timestamps
    end
  end
end
