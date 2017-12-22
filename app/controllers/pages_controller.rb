class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skill = Skill.all

	end
	def about
	@skills = Skill.all
end
	def contact
	end
end