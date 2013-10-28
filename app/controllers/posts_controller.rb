class PostsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @posts = @user.posts
    @comments = @user.comments
  end
end
