class CreateSupervisors < ActiveRecord::Migration[5.0]
  def change
    create_table :supervisors do |t|

    	t.string :employee_number
      	t.integer :user_id

      t.timestamps
    end
  end
end
