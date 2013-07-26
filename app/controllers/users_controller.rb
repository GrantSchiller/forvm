class UsersController < ApplicationController
  
  def show
  end

  def edit
    @user = User.find(params[:id])
    
    @skills = (Skill.all - @user.skills).map do |s|
      [s.name, s.id]
    end
    
    @cities = City.all.map do |c|
      [c.name, c.id]
    end
    
    @schools = School.all.map do |s|
      [s.name, s.id]
    end
    
    @years = 5.times.map do |n|
      y = Time.now.year
      y + n
    end
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(user_params)
      @user.reload
      flash[:success] = "Profile updated"
      
      redirect_to user_url(@user)
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to root_url
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :school_id, :city_id, :graduating_year)
    end
  
end
