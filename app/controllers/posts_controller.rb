# frozen_string_literal: true

class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    if params[:post][:wall_id]
      wall_id = params[:post][:wall_id]
      else
      wall_id = current_user.id
    end
    @post = Post.create(message: params[:post][:message], wall_id: wall_id, author_id: current_user.id)
    redirect_to "/wall/#{wall_id}"
  end

  def index
    redirect_to "/wall/#{current_user.id}"
  end

  def wall
    @posts = Post.where("wall_id = '#{params[:id]}'").order(created_at: :desc)
    @post = Post.new
    @user = User.find(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    redirect_to "/wall/#{@post.wall_id}"
  end

  def update
    @post = Post.find_by_id(params[:id])
    permitted_columns = params.require(:post).permit(:message)
    @post.update_attributes(permitted_columns)
    redirect_to posts_path
  end

  def redirect
    redirect_to "/wall/#{current_user.id}"
  end

  def search
    @user = User.find_by email: params[:search]

    if @user
      redirect_to "/wall/#{@user.id}"
    end

  end

end
