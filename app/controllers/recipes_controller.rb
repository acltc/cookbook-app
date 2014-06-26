class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @title = "Recipes"
  end

  def show
    @recipe = Recipe.find_by(:id => params[:id])
    if @recipe.nil?
      flash[:danger] = "Recipe cannot be found."
      redirect_to '/recipes'
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    # Recipe.create({:title => "Eggs", :author => "Jay"})
    # params[:recipe] = {"title"=>"Water", "author"=>"Jay", "ingredients"=>"Water", "directions"=>"Get water", "prep_time"=>"1 minute"}
    @recipe = Recipe.create(params[:recipe])
    flash[:success] = "Recipe successfully created."
    redirect_to "/recipes/#{@recipe.id}"
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipe])
    flash[:success] = "Recipe successfully updated."
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:warning] = "Recipe deleted."
    redirect_to "/recipes"
  end
end
