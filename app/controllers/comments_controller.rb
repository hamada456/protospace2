class CommentsController < ApplicationController

  def create
  end

  private
  def comment_params
    params.require(:comment).merge(user_id: current_user.id, prototype_id:)
  end

end
