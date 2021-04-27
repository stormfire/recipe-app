require 'rails_helper'

describe RecipiesController, type: :controller do
    render_views

    describe "GET 'index'" do
        it "lists recipies", :vcr do
            get :index
            expect(response).to be_successful
            expect(response.status).to be 200
            expect(response).to render_template 'index'
            expect(response.body).not_to eq(' ')
            expect(response.body).to include 'Total Recipies'
        end
    end

    describe "GET 'show'" do
        it "returns recipe", :vcr do
            id = Recipe.first.id
            get :show, params: { id: id }
            expect(response).to be_successful
            expect(response.status).to be 200
            expect(response).to render_template 'show'
            expect(response.body).not_to eq(' ')
            expect(response.body).to include 'recipe-details'
        end
    end
end