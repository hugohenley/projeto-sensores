class PositionDetailsController < ApplicationController
  respond_to :json, :html

  def index
    @position_details = PositionDetail.all
    respond_with(@position_details)
  end

  def create
    @position_details = PositionDetail.new(position_detail_params)
    if @position_details.save
      render json: "Created with success!"
    else
      render nothing: true, status: "400"
    end
  end

  private
  def position_detail_params
    params.require(:position_details).permit(:phone_model, :carrier, :signal, :latitude, :longitude, :timestamp)
  end
end