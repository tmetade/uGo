class CreateSupervisors < ActiveRecord::Migration[5.0]
  def change
    create_table :supervisors do |t|
    	t.integer :employee_number
    	t.integer :grant_account_number

      t.timestamps
    end
  end
end
