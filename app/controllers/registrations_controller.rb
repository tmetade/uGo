# controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
  	# if resource.type == "Requester"
  	 	new_requester_path(resource)
  	# elsif resource.type == "Supervisor"
  		# new_supervisor_path(resource)
    # end 
  end

  # def create
  #       resource.type = params[:type]
  #       resource.save
  # end
end