class CreateRestaurantXPhotos < ActiveRecord::Migration
  def change
    create_table :restaurant_x_photos do |t|
    	t.references :restaurants, index: true
    	t.text :SRC
    	t.string :Section
     	t.timestamps null: false
    end
  end
end
