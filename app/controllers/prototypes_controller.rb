class PrototypesController < ApplicationController
  def index
    @prototype = Prototype.all
    @prototypes = Prototype.all
    @prototype = @prototypes.first
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
    redirect_to root_path
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
