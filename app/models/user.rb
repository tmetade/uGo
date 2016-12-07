class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :given_name, :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/}


     def type
     	return self.role      	
     end 

     def actual_id
     	if self.type == "Supervisor"
     		return Supervisor.find_by(user_id: self.id)
     	elsif self.type == "Requester"
     		return Requester.find_by(user_id: self.id)
     	end

     end


end
