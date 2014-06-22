class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @title = "Recipes"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end
end
