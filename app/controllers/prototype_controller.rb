class PrototypeController < ApplicationController

  def index
  end

  def new
    @prototype = prototype.new
  end

  def create
    Prototype.create(prototype_params)
  end
  
  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end

end
