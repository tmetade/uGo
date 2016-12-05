class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|

 		t.integer :application_id
 		t.integer :application_status
    	t.string :application_recommendation
      t.timestamps
    end
  end
end
