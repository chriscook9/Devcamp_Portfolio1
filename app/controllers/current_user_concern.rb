module CurrentUserConcern
	extend ActiveSupport::Concern

 def current_user
    super || guest_user
  end

  def guest_user
  	Openstruct.new(name: "Guest User", 
  		           first_name: "Guest",
  				   last_name: "User",
  				   email: "")
end