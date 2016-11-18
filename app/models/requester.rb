class Requester < User
	belongs_to :supervisor
	has_many :applications
end
