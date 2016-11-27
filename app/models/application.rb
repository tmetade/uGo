class Application < ApplicationRecord
	validates :conference_name, presence: true
end
