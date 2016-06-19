class CreateRestaurantXClasificationTypes < ActiveRecord::Migration
  def change
    create_table :restaurant_x_clasification_types do |t|
    	t.references :restaurants, index: true
		t.references :clasifications, index: true
		t.references :types, index: true
      	t.timestamps null: false
    end
  end
end
