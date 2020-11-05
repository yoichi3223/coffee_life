class FavoritesController < ApplicationController

  def create
    drink = Drink.find(params[:drink_id])
    favorite = Favorite.new
    favorite.drink_id = drink.id
    favorite.user_id = current_user.id
    favorite.save
    redirect_to drink_path(drink)
  end

  def destroy
    drink = Drink.find(params[:drink_id])
    favorite = Favorite.find_by(drink_id: drink.id)
    favorite.user_id = current_user.id
    favorite.destroy
    redirect_to drink_path(drink)
  end
end
