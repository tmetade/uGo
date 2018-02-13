class RecommendationsController < ApplicationController
def index
    @recommendation =  Recommendation.all;
  end

  def new
    @recommendation = Recommendation.new;
  end

  def create
     @recommendation = Recommendation.new(secure_params)

    if @recommendation.save
      @application = Application.find_by(id: @recommendation.application_id)
      @requester = Requester.find_by(id: @application.requester_id)
      @supervisor = Supervisor.find_by(user_id: current_user.id)

      if @recommendation.application_status == -1 #rejected
        @notification = Notification.create({title: 3, requester_id: @requester.id, supervisor_id: @supervisor.id, application_id: @recommendation.application_id, supervisor_show: true, requester_show: true})
      elsif @recommendation.application_status == 1 #approved
        @notification = Notification.create({title: 2, requester_id: @requester.id, supervisor_id: @supervisor.id, application_id: @recommendation.application_id, supervisor_show: true, requester_show: true})
      end

      redirect_to root_path
    else
      render ("new")
    end
  end

  def show
    @recommendation = Recommendation.find(params[:id])
  end

  private

  def secure_params
    params.require(:recommendation).permit(:application_id, :application_status, :application_recommendation)
  end

end
