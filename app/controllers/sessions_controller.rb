class SessionsController < ApplicationController
  
  def new
    @title = "Sign In"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                               params[:session][:password])
      if user.nil?
        flash.now[:error] = "We're sorry, invalid email/password combination."
              @title = "Sign in"
              render 'new'
      else
        sign_in user
        redirect_to root_path
      end
  end
  
  def destroy
      sign_out
      redirect_to root_path
  end

end
