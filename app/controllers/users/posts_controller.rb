module Users
  class PostsController < ::User::ApplicationController
    def index
      @posts = current_user.posts
      # @q = current_user.posts.ransack(params[:q])
      # @posts = @q.result(distinct: true).page(params[:page])
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
      @post = Post.new
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to posts_url, notice: "投稿「#{@post.name}」を更新しました。"
      else
        render :edit
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_url, notice: "投稿#{@post.name}を削除しました"
    end

    def create
      @post = current_user.posts.build(post_params)
      if @post.save
        flash[:notice] = "投稿「#{@post.name}」が保存されました"
        redirect_to url_for(action: :index)
      else
        flash[:alert] = "投稿「#{@post.name}」に失敗しました"
        render :new
      end
    end

    #書き方候補
    # redirect_to posts_url, notice:"投稿「#{@post.name}」を登録しました。"


    private

    def post_params
      params.require(:post).permit(:name, :area_id, :genre_id, :started_at, :ended_at, :number, :description)
    end
  end
end
