class Application < ApplicationRecord
	has_many :recommendation, :dependent => :destroy
	validates :conference_name, presence: true
end
