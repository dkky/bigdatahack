class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
	    user_params.permit(:user_type, :name, :encrypted_password, :email, :password)
    end

    devise_parameter_sanitizer.permit(:account_update) do |user_params|
		user_params.permit(:user_type, :name, :encrypted_password, :email, :password)    
	end 
  end
end
