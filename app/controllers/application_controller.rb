class ApplicationController < ActionController::Base
<<<<<<< HEAD
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:type, :given_name, :last_name])
=======
  protect_from_forgery with: :exception
  def after_sign_up_path_for(resource)
  	new_recommendation(resource)
>>>>>>> master
  end
end
