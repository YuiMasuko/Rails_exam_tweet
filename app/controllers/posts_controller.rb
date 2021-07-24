class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
      Post.create(post_params)
      redirect_to new_post_path
  end
  def index
    @posts = Post.all
  end


  def post_params
      params.require(:post).permit(:content)
  end
end
