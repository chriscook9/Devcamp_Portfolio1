module DefaultPageController 
	extend ActiveSupport::Concern

	included do 
	  before_action :set_page_defaults

 def set_title
  	@page_title = "Devcamp Portfolio | My Portfolio Website"
  	@seo_keywords = "Chris Cook Portfolio"
  end
end


		