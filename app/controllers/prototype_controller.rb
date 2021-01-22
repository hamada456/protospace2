class PrototypeController < ApplicationController

  def index
  end

  def new
    @prototype = prototype.new
  end

  def create
  end
  
end
