class PostsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @posts = @user.posts
    @comments = @user.comments
  end

  def show
    params.inspect
    @post = Post.find(params[:id])
  end
end
