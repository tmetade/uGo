# controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
  	if resource.role == "Requester"
  	 	new_requester_path(resource)
  	elsif resource.role == "Supervisor"
  		new_supervisor_path(resource)
    end 
  end

  def sign_up_params
    params.require(:user).permit(:given_name, :last_name, :email, :password, :password_confirmation, :role)
  end
end