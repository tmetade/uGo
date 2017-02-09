class Requester < ActiveRecord::Base
	belongs_to :user
	belongs_to :supervisor

	validates :student_number, :bank_account_number, :session_number, presence: true, length: { maximum: 25 }, numericality: { only_integer: true }
	validates :program_of_study, :thesis_topic, :academic_unit, presence: true, format: { with: /\A[a-zA-Z]+\z/}
end
