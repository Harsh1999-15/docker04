class PostsController < ApplicationController
	before_action :get_shark,except: :destroy

	def create
		@post = @shark.posts.create(post_params)
		redirect_to @shark
	end

	def destroy
		@post = Post.find(params[:id])
		@shark= Shark.find_by(id:@post.shark_id)
		@post.destroy
		redirect_to @shark
	end

	private

	def get_shark
		@shark = Shark.find(params[:shark_id])
	end

	def post_params
		params.require(:post).permit(:body, :shark_id)
	end
end
