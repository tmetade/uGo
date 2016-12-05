class Application < ApplicationRecord
	has_many :recommendation, :dependent => :destroy
	belongs_to :requester
	validates :conference_name, :conference_date, :conference_location, :presence => true
end
