class PagesController < ApplicationController
	def _supervisor_dashboard
	end

	def _dashboard
	end

	def delete_notification
		redirect_to home_path
	end
end
