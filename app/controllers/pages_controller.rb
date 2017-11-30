class PagesController < ApplicationController
  def home
  	@posts =Blog.all
	end

	
end
