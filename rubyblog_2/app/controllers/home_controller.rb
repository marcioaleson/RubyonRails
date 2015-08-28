class HomeController < ApplicationController
  def index
  	@authors = Author.all
  	@categories = Category.all
  end
end
