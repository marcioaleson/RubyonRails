class ContactController < ApplicationController
  def index
  	@posts = Post.all.order('created_at DESC')
   	@authors = Author.all
  	@categories = Category.all  	
  end
end
