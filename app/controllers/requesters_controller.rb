class RequestersController < ApplicationController
   def index
    @requester =  Requester.all;
	end

	def new
    @supervisor = User.where(role: "Supervisor")
    @requester = Requester.new;
    
  end

  def create
     @requester = Requester.new(secure_params)
     @requester.user_id = current_user.id
     @passed_supervisor = params["requester"][:supervisor]
     @requester.supervisor_id = Supervisor.find_by(user_id: @passed_supervisor).id 
     

    if @requester.save!
      redirect_to root_path
    else
      redirect_to action: :new
    end

  end

  def show
    @requester = Requester.find(params[:id])
  end

  private

  def secure_params
    params.require(:requester).permit(:student_number, :bank_account_number, :program_of_study, :thesis_topic, :session_number, :academic_unit)
  end

end
