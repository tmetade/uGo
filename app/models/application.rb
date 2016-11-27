class Application < ApplicationRecord
	

	attr_accessor :conference_name, :string

	validates_presence_of :conference_name
end
