class SupervisorsController < ApplicationController
	 def index
    @supervisor =  Supervisor.all;
	end

	def new
    @supervisor = Supervisor.new;
  	end

  def create
     @supervisor = Supervisor.new(secure_params)

    if @supervisor.save
      redirect_to root_path
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
