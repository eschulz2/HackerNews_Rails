class PostsController < ApplicationController

  def new

  end

  def index
    @user = User.find(session[:user_id])
    @posts = @user.posts
    @comments = @user.comments
  end

  def show
    params.inspect
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(params[:post])
    @user = User.find(session[:user_id])
    @user.posts << @post
    redirect_to posts_path
  end
end
