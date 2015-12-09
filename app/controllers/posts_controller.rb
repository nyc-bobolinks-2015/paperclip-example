class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(title: params[:post][:title], photo: params[:post][:photo])
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
end
