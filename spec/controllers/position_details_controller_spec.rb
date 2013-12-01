require 'spec_helper'

describe PositionDetailsController do
  describe "create" do
    context "request with success" do
      before do
        @params = {position_details:
                       {phone_model: "Samsung Galaxy S4",
                        carrier: "VIVO",
                        signal: "-72dBm",
                        latitude: "-22° 54' 10''",
                        longitude: "-43° 12' 27''",
                        timestamp: "20131130094247"}
        }
      end

      it "returns 200 OK if all the params are correct" do
        post :create, @params
        expect(response.code).to be == "200"
      end

      it "expect to save position details" do
        post :create, @params

        PositionDetail.count.should == 1
      end

      it "expect the details to be the same of the params" do
        post :create, @params

        PositionDetail.first.phone_model.should == @params[:position_details][:phone_model]
        PositionDetail.first.carrier.should == @params[:position_details][:carrier]
        PositionDetail.first.signal.should == @params[:position_details][:signal]
        PositionDetail.first.latitude.should == @params[:position_details][:latitude]
        PositionDetail.first.longitude.should == @params[:position_details][:longitude]
        PositionDetail.first.timestamp.should == @params[:position_details][:timestamp]
      end
    end

    context "request without success" do

    end

  end

  describe "index" do
    before do
      FactoryGirl.create :position_detail
      @position_details_sample = File.read 'spec/assets/position_details_sample.json'
    end

    it "returns a JSON with position details content" do
      get :index, :format => :json

      parsed_json = JSON.parse(response.body).first

      parsed_json.should have_key("id")
      parsed_json.should have_key("phone_model")
      parsed_json.should have_key("carrier")
      parsed_json.should have_key("signal")
      parsed_json.should have_key("latitude")
      parsed_json.should have_key("longitude")
      parsed_json.should have_key("timestamp")
      parsed_json.should have_key("created_at")
      parsed_json.should have_key("updated_at")
    end
  end
end
