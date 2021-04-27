require "rails_helper"

RSpec.describe RecipesHelper, :type => :helper do
    let(:valid_datetime_str) {"2018-05-07T13:30:34.066Z"}
    let(:invalid_datetime_str) {"invalid datetime"}
    # let(:photo){{:sys=>{:type=>"Link", :linkType=>"Asset", :id=>"3TJp6aDAcMw6yMiE82Oy0K"}} }
    # let(:chef){{:sys=>{:type=>"Link", :linkType=>"Entry", :id=>"1Z8SwWMmS8E84Iogk4E6ik"}} }
    # let(:fields){
    #     {:title=>"Grilled Steak ", :photo=>photo, :calories=>345, :description=>"Warmer weather means the ushering in of grill. Cook, relax, and enjoy!", :chef=>chef} 
    # }
    # let(:recipe_params) {{"sys": {"id": "2E8bc3VcJmA8OgmQsageas","locale": "en-US"},"fields": fields}}
    # let(:recipie) { ContentfulEntry::Recipe.new(obj) }
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

    # describe "#render_tags_if_exists", :vcr do
    #     context "when tags exists" do
    #         it "should return html content for tags" do
    #             expect(helper.render_tags_if_exists(recipie)).to eq(true)
    #         end    
    #     end

    #     context "rwhen tags doesn't exists" do
    #         it "shouldn't return html content for tags" do
    #             expect(helper.render_tags_if_exists(nil)).to eq(false)
    #         end     
        
    #     end    
    
    # end
end