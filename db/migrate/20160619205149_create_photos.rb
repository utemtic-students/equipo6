class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
   		t.references :sites, index: true
    	t.text :SRC
    	t.string :Section
        t.timestamps null: false
    end
  end
end
