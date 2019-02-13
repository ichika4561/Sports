class PostsController < ApplicationController
  def index
    @q = Post.where("started_at > ?", Time.zone.now).order(started_at: :asc).ransack(params[:q])
    @posts = @q.result(distinct: true).page(params[:page])
  end
  
  def show
    @post = Post.find(params[:id])
  end
end
