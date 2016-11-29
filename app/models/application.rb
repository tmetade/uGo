class Application < ApplicationRecord
	has_many :recommendations, :dependent => :destroy
	validates :conference_name, presence: true
end
