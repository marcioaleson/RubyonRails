class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = Coment.create(params[:comment].premit(:content))
		@comment.user_id = current_user.id
		@comment.post_id = @post.id

		if @comment.save
			redirect_to post_path(@post)
			
		else
			render 'new'
			
		end
		
	end
end
