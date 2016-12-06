class PagesController < ApplicationController
	def _supervisor_dashboard
	end

	def _dashboard
	end

	def delete_notification_supervisor
        @id_for_delete = params[:id]
        @app = Application.find(@id_for_delete)
        @app.notifysupervisor = false
		redirect_to home_path
	end
    
    def delete_notification_requester
        @id_for_delete = params[:id]
        @app = Application.find(@id_for_delete)
        @app.notifyrequester = false
		redirect_to root_path
	end
end
