class CreateEveningEntertainmentXPhotos < ActiveRecord::Migration
  def change
    create_table :evening_entertainment_x_photos do |t|
    	t.references :evening_entertainments,  name: :idevening_entertainments
    	t.text :SRC
    	t.string :Section
     	t.timestamps null: false
    end
  end
end
