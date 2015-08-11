class PagesController < ApplicationController
     attr_accessor :greeting

     def home
     	 @greeting = "Hello World!"
     end

end
