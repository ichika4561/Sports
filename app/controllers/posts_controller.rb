class PostsController < ApplicationController
  def index
    @posts =current_user.posts
    # @q = current_user.posts.ransack(params[:q])
    # @posts = @q.result(distinct: true).page(params[:page])
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post =Post.new
  end

  def edit
    @post =Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update!(post_params)
    redirect_to post_url,notice:"投稿「#{post.name}」を更新しました。"
  end
  
  def destroy
   post = Post.find(params[:id])
   post.destroy
   redirect_to posts_url, notice:"投稿#{post.name}を削除しました"
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "投稿「#{@post.name}」が保存されました"
      redirect_to posts_path
    else
      redirect_to posts_path
      flash[:alert] = "投稿「#{@post.name}」に失敗しました"
    end
  #書き方候補
  # redirect_to posts_url, notice:"投稿「#{@post.name}」を登録しました。"
  end
  
  private
  def post_params
   params.require(:post).permit(:name, :areas, :genres, :startdate, :enddate, :number, :descripton)
  end
  
end
