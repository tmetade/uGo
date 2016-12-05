class Requester < ActiveRecord::Base
	belongs_to :user
	belongs_to :supervisor

	validates :student_number, :bank_account_number, :program_of_study, :presence => true
end
