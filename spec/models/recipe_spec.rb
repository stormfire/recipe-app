require 'rails_helper'

describe Recipe, type: :model do
    let(:content_type_id) {'recipe'}
    let(:invalid_id){'invalid-id'}

    describe 'inherits from ContentfulModel::Base' do
        describe 'model definition' do
            it "should have correct content_type_id" do
                expect(described_class.content_type_id).to eq content_type_id
            end

            it "should inherit ContentfulModel::Base" do
                expect(described_class.ancestors).to include ContentfulModel::Base
            end

        end

        describe '.first' do
            it "should return a recipe", :vcr do 
                recipe = described_class.first
                expect(recipe.content_type.id).to eq content_type_id
                expect(recipe.title).not_to be_nil
                expect(recipe.description).not_to be_nil
                expect(recipe.photo).not_to be_nil
            end  

        end

        describe '.all' do
            it "should return recipe records", :vcr do
                recipies = described_class.all.load
                expect(recipies.count).to be > 0
                recipe = recipies.first
                expect(recipe.content_type.id).to eq content_type_id
                expect(recipe.title).not_to be_nil
                expect(recipe.description).not_to be_nil
                expect(recipe.photo).not_to be_nil
            end

        end
    end
end