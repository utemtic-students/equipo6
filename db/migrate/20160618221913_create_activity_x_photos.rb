class CreateActivityXPhotos < ActiveRecord::Migration
  def change
    create_table :activity_x_photos do |t|
    	t.references :activities, index: true
    	t.text :SRC
    	t.string :Section
     	t.timestamps null: false
    end
  end
end
