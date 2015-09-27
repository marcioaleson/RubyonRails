class HomeController < ApplicationController
  def index
   	@users = User.all
   	@posts = Post.paginate(:page => params[:page], :per_page => 5)
  	@categories = Category.all 	
  end
end

	
