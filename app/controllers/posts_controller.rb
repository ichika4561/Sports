class PostsController < ApplicationController
  def index
    @q = current_user.posts.ransack(params[:q])
    @posts = @q.result(distinct: true).page(params[:page])
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
    @post = Post.new(post_params)
    
    if @post.save
       redirect_to posts_url, notice:"投稿「#{@post.name}」を登録しました。"
    else
     render :new
    end
  end
  
  private
  def post_params
   params.require(:post).permit(:name,:descripton)
  end
  
end
