class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = post.find_by(id :params[:id])
  end

  def edit
    @post = post.find_by(id :params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content :params[:content])
    @post.save
    redirect_to("/posts/index")
  end

end
