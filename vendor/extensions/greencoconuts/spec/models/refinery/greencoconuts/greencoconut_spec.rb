require 'spec_helper'

module Refinery
  module Greencoconuts
    describe Greencoconut do
      describe "validations" do
        subject do
          FactoryGirl.create(:greencoconut,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
