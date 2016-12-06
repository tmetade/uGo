class Notification < ApplicationRecord

	
	REQUESTER_NOTIFICATION_TITLES = [
		'',
		'You\'ve submitted an application',	#1
		'Your application has been approved', #2
		'Your application has been rejected' #3
	]

	SUPERVISOR_NOTIFICATION_TITLES = [
		'',
		'Your student submitted an application',  #1
		'You\'ve approved an application',  #2
		'You\'ve rejected an application'  #3
	]


	def getNotificationNameForRequester
		return REQUESTER_NOTIFICATION_TITLES[self.title]
	end

	def getNotificationNameForSupervisor
		return SUPERVISOR_NOTIFICATION_TITLES[self.title]
	end

end
