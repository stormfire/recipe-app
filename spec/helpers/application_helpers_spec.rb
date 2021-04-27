require "rails_helper"

RSpec.describe ApplicationHelper, :type => :helper do
    describe "#is_odd_index" do
        context "when inputs are odd" do
            it "should return true for 1" do
                expect(helper.is_odd_index(1)).to eq(true)
            end

            it "should return true for odd values" do
                expect(helper.is_odd_index(11)).to eq(true)
            end      
        end

        context "when inputs are even" do
            it "should return false for nil value" do
                expect(helper.is_odd_index(nil)).to eq(false)
            end
            
            it "should return false for 0" do
                expect(helper.is_odd_index(0)).to eq(false)
            end 

            it "should return false for 2" do
                expect(helper.is_odd_index(2)).to eq(false)
            end      
        
            it "should return false for even values" do
                expect(helper.is_odd_index(12)).to eq(false)
            end      
        
        end    
    
    end
end