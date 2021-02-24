class CommentsController < ApplicationController

  def create
    if comment.save
      redirect_to :show
    else
      render :show
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
