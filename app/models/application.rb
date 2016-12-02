class Application < ApplicationRecord
	has_many :recommendation, :dependent => :destroy
	belongs_to :requester
	validates :conference_name, presence: true
end
