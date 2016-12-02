class CreateRequesters < ActiveRecord::Migration[5.0]
  def change
    create_table :requesters do |t|
    	t.integer :student_number
    	t.integer :bank_account_number, :limit => 8
    	t.string :program_of_study
    	t.string :thesis_topic
    	t.integer :session_number
    	t.belongs_to :supervisor, index: true
    	t.string :academic_unit
    	t.integer :user_id

      t.timestamps
    end
  end
end