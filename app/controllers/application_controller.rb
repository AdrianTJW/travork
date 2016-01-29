class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 	
 	class UserParams < Devise::ParameterSanitizer
 		def sign_in
 			default_params.permit(:email, :password, :remember_me)
 		end

 		def sign_up
 			default_params.permit(:email, :password, :password_confirmation)
 		end

 		def acount_update
 			default_params.permit(:fullname, :contact, :password_confirmation)
 		end
 	end
end
