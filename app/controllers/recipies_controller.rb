class RecipiesController < ApplicationController
  def index
    @recipies = Recipe.all.load
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

end
