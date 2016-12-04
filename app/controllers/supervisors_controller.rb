class SupervisorsController < ApplicationController
	 def index
    @supervisor =  Supervisor.all;
	end

	def new
    @supervisor = Supervisor.new;
  	end

  def create
     @supervisor = Supervisor.new(secure_params)
     @supervisor.user_id = current_user.id

    if @supervisor.save!
      render "pages/_supervisor_dashboard"
    else
	  redirect_to action: :new    
	end

  end

  def show
    @supervisor = Supervisor.find(params[:id])
  end

  private

  def secure_params
    params.require(:supervisor).permit(:employee_number)
  end
end
