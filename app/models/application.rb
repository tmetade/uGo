class Application < ApplicationRecord
	belongs_to :requester
	belongs_to :supervisor
	belongs_to :recommendation
	validates :conference_name, presence: true
end
