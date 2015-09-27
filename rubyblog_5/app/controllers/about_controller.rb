class AboutController < ApplicationController
  def index
   	@users = User.all
  	@categoryAll = Category.all  	
  end
end
