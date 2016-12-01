class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_up_path_for(resource)
  	new_recommendation(resource)
  end
end
