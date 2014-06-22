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

  def create
    # Recipe.create({:title => "Eggs", :author => "Jay"})
    # params[:recipe] = {"title"=>"Water", "author"=>"Jay", "ingredients"=>"Water", "directions"=>"Get water", "prep_time"=>"1 minute"}
    Recipe.create(params[:recipe])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipe])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end
end
