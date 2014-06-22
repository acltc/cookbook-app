class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @title = "Recipes"
  end
end
