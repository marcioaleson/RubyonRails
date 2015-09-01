class HomeController < ApplicationController
  def index
  	@posts = Post.all
  	@authors = Author.all
  	@categories = Category.all 
  end
end
