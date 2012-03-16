class UsersController < ApplicationController
  
  def index
      @user = User.find(params[:all])
      @title = 'Users'
  end
  
  def show
      @user = User.find(params[:id])
      @title = @user.name
  end
    
  def new
    @user = User.new
    @title = 'Sign Up'
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Thank you for signing up!"
      redirect_to @user
    else
      @title = 'Sign Up'
      render 'new'
    end
  end
  
end
