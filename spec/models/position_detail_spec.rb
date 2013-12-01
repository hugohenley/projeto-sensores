require 'spec_helper'

describe PositionDetail do
  describe "validations" do
    context "when all attributes are empty" do
      it { should_not be_valid }
    end

    context "when phone_model is empty" do
      subject { FactoryGirl.build :position_detail, :phone_model => nil }

      it { should_not be_valid }
    end

    context "when phone_model is empty" do
      subject { FactoryGirl.build :position_detail, :phone_model => nil }

      it { should_not be_valid }
    end

    context "when signal is empty" do
      subject { FactoryGirl.build :position_detail, :signal => nil }

      it { should_not be_valid }
    end

    context "when latitude is empty" do
      subject { FactoryGirl.build :position_detail, :latitude => nil }

      it { should_not be_valid }
    end

    context "when longitude is empty" do
      subject { FactoryGirl.build :position_detail, :longitude => nil }

      it { should_not be_valid }
    end

    context "when timestamp is empty" do
      subject { FactoryGirl.build :position_detail, :timestamp => nil }

      it { should_not be_valid }
    end

  end

end
