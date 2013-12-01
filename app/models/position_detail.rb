class PositionDetail < ActiveRecord::Base

  validates :phone_model, presence: true
  validates :carrier, presence: true
  validates :signal, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :timestamp, presence: true

end
