class PostsController < ApplicationController
  def new
		@post = Post.new
  end
  def create
	  @post = Post.new(post_params)
	  @post.creator = current_user.username
	  if @post.creator.length == 0
			@post.creator = current_user.email
		end
	  if @post.save
	    redirect_to @post
	  else
	    render 'new'
	  end
	end
	def show
		@post = Post.find(params[:id])
	end
	def index
		@post = Post.find(params[:id])
	end
	def edit
	  @post = Post.find(params[:id])
	end
	def update
	  @post = Post.find(params[:id])
	 
	  if @post.update(post_params)
	    redirect_to @post
	  else
	    render 'edit'
	  end
	end
	def destroy
	  @post = Post.find(params[:id])
	  @post.destroy
	 
	  redirect_to welcome_index_path
	end	
	private
	  def post_params
	    params.require(:post).permit(:title, :text, :creator)
	  end
end
