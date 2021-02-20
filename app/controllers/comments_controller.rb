class CommentsController < ApplicationController

  def create
    comment.save
    render :show
  end

  private
  def comment_params
    params.require(:comment).merge(user_id: current_user.id, prototype_id:)
  end

end
