class Recipe < ActiveRecord::Base
  def ingredient_list
    return ingredients.split(",")
  end

  def direction_list
    return directions.split(",")
  end

  def author_initials
    # names = ["Bob", "Dole"]
    names = author.split(" ")
    initials = ""
    names.each do |name|
      initials = initials + name[0]
    end
    return initials
  end

  def friendly_created_at
    return created_at.strftime("%b %d, %Y")
  end

  def friendly_updated_at
    return updated_at.strftime("%b %d, %Y")
  end

end
