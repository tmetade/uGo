class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
 		  t.integer :title
 		  t.integer :requester_id
    	t.integer :supervisor_id
    	t.integer :application_id
    	t.boolean :supervisor_show
    	t.boolean :requester_show

      t.timestamps
    end
  end
end
