class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|

    	t.string :application_recommendation

      t.timestamps
    end
  end
end
