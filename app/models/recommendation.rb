class Recommendation < ApplicationRecord
	 belongs_to :application 
	
	 validates :application_recommendation, :presence => true
	
end
