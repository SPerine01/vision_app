class HomeController < ApplicationController

	def welcome
		if user_signed_in?
			redirect_to visions_path
		# else 
		# 	redirect_to new_user_session_path
		end
	end
end
