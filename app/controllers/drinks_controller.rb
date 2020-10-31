class DrinksController < ApplicationController

  def index 

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

  end

  def edit
    
  end

  def update
  
  end

  def destroy

  end
  private
  def drink_params
    params.require(:drink).permit(:title,:text,:image)
  end


end
