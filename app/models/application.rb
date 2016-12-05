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

    def total
    	return (self.registration_cost + self.meals_cost + self.accomodation_cost + self.transportation_cost)
    end

    def student_name
    	@requester = Requester.find_by(id: self.requester_id)
    	@user = User.find_by(id: @requester.user_id)
    	return [@user.given_name, @user.last_name].join(' ')
    end

end
