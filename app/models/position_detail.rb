class PositionDetail < ActiveRecord::Base

  validates :phone_model, presence: true
  validates :carrier, presence: true
  validates :signal, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :timestamp, presence: true
  
  def with_api_params(params)
    self.phone_model = params[:phone_model]
    self.carrier = params[:carrier]
    self.signal = params[:signal]
    self.latitude = params[:latitude]
    self.longitude = params[:longitude]
    self.timestamp = params[:timestamp]
  end

end
