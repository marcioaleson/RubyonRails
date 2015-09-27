class SearchController < ApplicationController
  def index
   	@users = User.all
   	#@posts = Post.paginate(:page => params[:page], :per_page => 5)
  	@categories = Category.all
  	@search = Post.where("title like ?", "%#{params[:search]}%").paginate(:page => params[:page], :per_page => 2)
  end
end
