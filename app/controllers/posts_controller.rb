class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to new_post_path, notice: "投稿しました！"
      else
        render :new
      end
  end
  def index
    @posts = Post.all
  end


  def post_params
      params.require(:post).permit(:content)
  end
end
