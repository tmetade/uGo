class Application < ApplicationRecord
	has_many :recommendation, :dependent => :destroy
	belongs_to :requester
    validates :conference_name, :conference_location, presence: true, format: { with: /\A[a-zA-Z]+\z/}
    validates :conference_date, presence: true
    validates :registration_cost, :transportation_cost, :accomodation_cost, :meals_cost, presence: true
	
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

    def days_until
	    current_date = Date.today
        conference_date = self.conference_date
        days_until = (conference_date - current_date).to_i
    end
end