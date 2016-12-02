class Supervisor < ActiveRecord::Base
	belongs_to :user
	has_many :requester
end
