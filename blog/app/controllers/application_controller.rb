class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	@post = Post.find(params[:post_id])
  	#@comment = @post.all
  end

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params[:comment])
  	redirect_to post_path(@post)
  end

  def show
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params[:comment])
  end



end
