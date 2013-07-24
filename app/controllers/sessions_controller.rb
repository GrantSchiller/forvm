class SessionsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token, only: :create
  
  def new
    if current_user
      flash[:notice] = "Already signed in"
      redirect_to root_url
    end
  end

  def create
    auth = request.env["omniauth.auth"]
    
    authentication = Authentication.find_by(provider: auth['provider'], uid: auth['uid'])
    
    if authentication
      user = authentication.user
      
      sign_in user
      
      flash[:notice] = "Logged in!"
      redirect_to root_url
    else
      user = User.create(name: auth['info']['name'], email: auth['info']['email'])
      user.authentications.create(provider: auth['provider'], uid: auth['uid'])
      
      sign_in user
      
      flash[:notice] = "Account created, now fill in the rest of your details:"
      redirect_to edit_user_url(user)
    end
  end

  def destroy
    sign_out
    
    flash[:notice] = "Signed out"
    redirect_to root_url
  end
  
end
