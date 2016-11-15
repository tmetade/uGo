class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :given_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :student_number, :integer
  	add_column :users, :bank_account_number, :integer
  	add_column :users, :program_of_study, :string
  	add_column :users, :thesis_topic, :string
  	add_column :users, :session_number, :integer
  	add_column :users, :supervisor, :string
  	add_column :users, :academic_unit, :string
  end
end
