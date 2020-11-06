class DrinksController < ApplicationController

  def index
    @drinks = Drink.page(params[:page]).reverse_order
  end

  def new 
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    @drink.user = current_user
    if @drink.save
      redirect_to user_path(current_user)
    else
      render :new
    end
end

  def show 
    @drink = Drink.find(params[:id])
    @comment = Comment.new
    @favorite = Favorite.new
  end

  def edit
    @drink = Drink.find(params[:id])
    
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.update(drink_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    redirect_to user_path(current_user)

  end
  private
  def drink_params
    params.require(:drink).permit(:title,:text,:image,:chain_id)
  end


end
