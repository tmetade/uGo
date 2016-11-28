class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
    	t.integer :application_number
    	t.string :conference_name
    	t.date :conference_date
    	t.string :conference_location
    	t.boolean :status
    	t.decimal :registration_cost
    	t.decimal :transportation_cost
    	t.decimal :accomodation_cost
    	t.decimal :meals_cost

      t.timestamps
    end
  end
end
