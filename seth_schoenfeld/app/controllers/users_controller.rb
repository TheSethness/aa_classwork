class UsersController < ApplicationController

before_action :require_logged_in, only: [:index, :show]

def new 
  @user = User.new 

  render :new 
end

  def create 
      @user = User.new(user_params)

      if @user.save 
        login(@user)
        redirect_to poems_url
      else
        flash[:errors] = @user.errors.full_messages
        render :new 
      end

  end

  def user_params 
    params.require(:user).permit(:username,:password )
  end

end
