class PositionDetailsController < ApplicationController
  respond_to :json

  def index
    @position_details = PositionDetail.all
  end

  def create
    @position_details = PositionDetail.new(params[:position_details])
    if @position_details.save
      respond_with(@position_details)
    else
      render :nothing => true, :status => "400"
    end
  end

end