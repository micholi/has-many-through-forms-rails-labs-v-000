class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @user = User.new
  end

  def new
    @post = Post.new
  end

  def create
    @post  = Post.create(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attribues: [:name])
  end
end
