class Requester < ActiveRecord::Base
	belongs_to :user
	belongs_to :supervisor
end
