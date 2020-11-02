module DrinksHelper

  def drink_index(drink)
    if drink.user.id == current_user.id
      return "◯"
    else
      return ""
    end
  end
end
