class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
		t.references :sites, index: true
    	t.text :SRC
    	t.string :Section
    	t.integer :position
        t.timestamps null: false
    end
  end
end
