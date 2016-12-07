class EntityController < ApplicationController
  def new
    @entity = Entity.new
  end

  def create
  end

  def add_friend
    @entity = current_user.entity.build(entity_id: params[:entity_id])
    flash[:success] = 'Entity Added' if @entity.save
    redirect_to user_path(params[:entity_id])
  end

  private
  def entity_params
    params.require(:entity).permit(:user_id, :entity_id)
  end
end
