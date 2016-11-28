class Supervisor < User
	has_many :requesters
	has_many :recommendations
	has_many :applications
end
