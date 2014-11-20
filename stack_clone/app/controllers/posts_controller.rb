class PostsController < ApplicationController
	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			
			redirect_to post_path(@post.id), notice: "New post has been succesfuly created."
		else
			flash.now.alert = "Failed to create a new post."
			render "new"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	private
	def post_params
		params.require(:post).permit(:title,:question,:user_id)
	end
end
