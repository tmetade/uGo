class ApplicationsController < ApplicationController
	def index
    @application =  Application.all;
	end

	def new
    @application = Application.new;
  end

  def create
     @application = Application.new(secure_params)

      @application.requester_id = Requester.find_by(user_id: current_user.id).id
      @application.status = 0
     

    if @application.save
      redirect_to root_path
    else
      render ("new")
    end

  end

  def show
    @cats = Application.select("DISTINCT name, id")
    @application = Application.find(params[:id])
  end

  private

  def secure_params
    params.require(:application).permit( :application_number, :conference_name, :conference_date,
    	 :conference_location, :registration_cost, :transportation_cost, :accomodation_cost,
    	:meals_cost)
  end

end
