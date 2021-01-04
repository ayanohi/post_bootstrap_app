class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  def index
    @posts = Post.order(id: :asc)
  end

  def show
    # @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post_path(post), notice: "投稿しました"
  end

  def edit
    # @post = Post.find(params[:id])
  end

  def update
    # post = Post.find(params[:id])
    @post.update!(post_params)
    redirect_to @post, notice: "更新しました"
  end

  def destroy
    # post = Post.find(params[:id])
    @post.destroy!
    redirect_to root_path, alert: "削除しました"
  end

  def set_post
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
