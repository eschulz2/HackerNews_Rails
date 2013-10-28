class UsersController < ApplicationController

  def create
    
    @user = User.find_by_email(params[:user][:email])

    if @user
      @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      redirect_to ('/')
    end
  end
end
