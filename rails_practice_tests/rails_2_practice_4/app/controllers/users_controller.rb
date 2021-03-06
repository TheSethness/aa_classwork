class UsersController < ApplicationController
  before_action :require_logged_in, except: [:create, :new]

  def new 
    @user = User.new 

  end

  def index 
    @users = User.all 
  end

  def show 
    @user = User.find_by(id: params[:id])
  end

  def create 
    @user = User.new(user_params)

    if @user.save 
      login(@user)
      redirect_to users_url 
    else  
      flash[:errors] = ["Password is too short (minimum is 6 characters)"] 
      render :new 
    end
  end

  def user_params 
    params.require(:user).permit(:username, :password)
  end

end
