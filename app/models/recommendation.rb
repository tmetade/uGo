class Recommendation < ApplicationRecord
	 belongs_to :application 
	
	 validates :application_recommendation, :presence => true

	 def comments
	 	return self.application_recommendation
	 end	
end
