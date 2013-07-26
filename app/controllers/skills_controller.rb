class SkillsController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:skill][:id])
    
    @user.skills << @skill
  end

  def destroy
    @user = User.find(params[:user_id])
    @skill = @user.skills.find(params[:id])
    
    @user.skills.delete @skill
  end
  
end
