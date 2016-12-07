class Supervisor < ActiveRecord::Base
	belongs_to :user
	has_many :requester
	validates :employee_number, presence: true, length: { maximum: 25 }, numericality: { only_integer: true }
end
