class Api::SessionsController < ApplicationController
  before_action :require_loggedin, only: [:destroy]

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user.nil?
      render json: ["Wrong credentials!"], status: 401
    else
      login(@user)
      render "api/users/show" # maybe with /api...
    end
  end

  def destroy
    logout
    render json: {}
  end
end
