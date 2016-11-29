class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|

    	t.belongs_to :application, index: true
    	t.string :application_recommendation

      t.timestamps
    end
  end
end
