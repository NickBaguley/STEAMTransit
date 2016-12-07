class SkillsController < ApplicationController

  def new
    @Skills = Skills.new
  end

  def create
  end

  def add_Skills
    @Skills = current_user.Skills.build(skillsdata: params[:skillsdata])
    flash[:success] = 'Skills Added' if @Skills.save
  end

  def Skills_params
    params.require(:user).permit(:user_name, :skillsdata, :Skills_params, :bio, :email, :password, :avatar)
  end

  private
  def skills_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end
end
