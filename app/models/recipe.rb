class Recipe < ActiveRecord::Base

  def ingredient_list
    return ingredients.split(",")
  end

  def direction_list
    return directions.split(",")
  end

  def author_initials
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

  def friendly_prep_time
    message = ""
    hours = prep_time / 60
    if hours == 1
      message = message + "#{hours} hour "
    elsif hours > 0
      message = message + "#{hours} hours "
    end
    minutes = prep_time % 60
    if minutes == 1
      message = message + "#{minutes} minute"
    elsif minutes > 0
      message = message + "#{minutes} minutes"
    end
    return message
  end

end
