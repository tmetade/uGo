class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
    	t.integer :application_number
    	t.string :conference_name
    	t.date :conference_date
    	t.string :conference_location
    	t.integer :status  # -1 = declined 0 = pending  1 = approved  
    	t.decimal :registration_cost
    	t.decimal :transportation_cost
    	t.decimal :accomodation_cost
    	t.decimal :meals_cost
      t.integer :requester_id

      t.timestamps
    end
  end
end
