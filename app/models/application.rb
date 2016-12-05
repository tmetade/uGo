class Application < ApplicationRecord
	has_many :recommendation, :dependent => :destroy
	belongs_to :requester
	validates :conference_name, :conference_date, :conference_location, :presence => true

	def recommendation
	    if Recommendation.exists?(:application_id => self.id)
	      @recommendation = Recommendation.find_by(application_id: self.id)
	      if @recommendation.application_status == 1
	        return "approved"
	      elsif @recommendation.application_status == -1
	        return "declined"
	      end
	    else  
	      return "pending"
	    end
    end

end
