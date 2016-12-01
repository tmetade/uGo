class RequestersController < ApplicationController
<<<<<<< HEAD
    def new
        @requester = Requester.new
        # redirect_to new_requester_path(resource)
    end

    def create
        @requester = Requester.new(secure_params)
        if(@requester.save)
            #Saved successfully; go to the index (or wherever)...
            redirect_to root_path()
        else
            #Validation failed; show the "new" form again...
            render ("new")
        end
    end

    def secure_params
        params.require(:requester).permit(:student_number, :bank_account_number, :program_of_study, :thesis_topic, :session_number, :supervisor, :academic_unit)
    end


end
=======
   def index
    @requester =  Requester.all;
	end

	def new
    @requester = Requester.new;
  end

  def create
     @requester = Requester.new(secure_params)

    if @requester.save
      redirect_to root_path
    else
      render ("new")
    end

  end

  def show
    @requester = Requester.find(params[:id])
  end

  private

  def secure_params
    params.require(:requester).permit(:student_number, :bank_account_number, :program_of_study, :thesis_topic, :session_number, :supervisor_id, :academic_unit)
  end

end

>>>>>>> master
