class CommentsController < ApplicationController
  def create
    drink = Drink.find(params[:drink_id])
    @comment = Comment.new(comment_params)
    @comment.drink_id = drink.id
    if @comment.save
    redirect_to drink_path(@comment.drink)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text,:drink_id).merge(user: current_user)
  end
end
