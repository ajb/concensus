require 'concensus'

describe Concensus do
  describe "school districts" do
    
    describe "elementary" do
      it "should be able to find an elementary school district for a state" do
        Concensus::SchoolDistrict::Elementary.find("AZ", "San Fernando").should be_instance_of(Concensus::Resource)
      end

      it "should be able to find all elementary school districts for a state" do
        Concensus::SchoolDistrict::Elementary.find_all("AZ").should be_instance_of(Array)
      end
    end
    
    describe "elementary" do
      it "should be able to find a secondary school district for a state" do
        Concensus::SchoolDistrict::Secondary.find("AZ", "Tempe Union").should be_instance_of(Concensus::Resource)
      end

      it "should be able to find all secondary school districts for a state" do
        Concensus::SchoolDistrict::Secondary.find_all("AZ").should be_instance_of(Array)
      end
    end
    
    describe "unified" do
      it "should be able to find a unified school district for a state" do
        Concensus::SchoolDistrict::Unified.find("AZ", "Chandler").should be_instance_of(Concensus::Resource)
      end

      it "should be able to find all unified school districts for a state" do
        Concensus::SchoolDistrict::Unified.find_all("AZ").should be_instance_of(Array)
      end
    end
    
  end
end