class ApplicationsController < ApplicationController
	def index
    @application =  Application.all;
	end

	def new
    @application = Application.new;
  end

  def create
     @application = Application.new(secure_params)
     @requester = Requester.find_by(user_id: current_user.id)
     @application.requester_id = @requester.id

    if @application.save 
      @notification = Notification.create({title: 1, requester_id: @requester.id, supervisor_id: @requester.supervisor_id, application_id: @application.id, supervisor_show: true, requester_show: true})
      redirect_to root_path
    else
      render ("new")
    end
  end

  def supervisor_show
    @cats = Application.select("DISTINCT name, id")
    @application = Application.find(params[:id])
  end

  def requester_show
    @cats = Application.select("DISTINCT name, id")
    @application = Application.find(params[:id])
  end

  def secure_params
    params.require(:application).permit(:conference_name, :conference_date,
    	 :conference_location, :registration_cost, :transportation_cost, :accomodation_cost,
    	:meals_cost)
  end
end