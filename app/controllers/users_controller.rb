class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @drinks = @user.drinks
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user)
    else
    render :edit
    end
  end

  def index
    @users = User.all
  end
   private
  def user_params
    params.require(:user).permit(:name,:email,:postcode,:address,:image,:introduction,:address)
  end
end
