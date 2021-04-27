require "rails_helper"

RSpec.describe RecipesHelper, :type => :helper do
    let(:valid_datetime_str) {"2018-05-07T13:30:34.066Z"}
    let(:invalid_datetime_str) {"invalid datetime"}

    describe "#created_at_in_utc" do
        it "return DateTime object for valie datetime string" do
            expect(helper.created_at_in_utc(valid_datetime_str)).not_to be_nil
        end

        it "returns nil for invalid datetime string" do
            expect(helper.created_at_in_utc(invalid_datetime_str)).to be_nil
        end

        it "returns nil for nil value" do
            expect(helper.created_at_in_utc(nil)).to be_nil
        end

    end
    
end