class Recipe < ActiveRecord::Base
  def ingredient_list
    return ingredients.split(",")
  end
end
