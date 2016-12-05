class RecommendationsController < ApplicationController
def index
    @recommendation =  Recommendation.all;
  end

  def new
    @recommendation = Recommendation.new;
  end

  def create
     @recommendation = Recommendation.new(secure_params)
     @app =Application.find(@recommendation.application_id)
      @app.notifyrequester = true
    if @recommendation.save
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
    params.require(:recommendation).permit(:application_id, :application_recommendation)
  end

end
