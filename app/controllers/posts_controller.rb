class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post created successfully."
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem creating this post."
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image, :title)
  end

end
