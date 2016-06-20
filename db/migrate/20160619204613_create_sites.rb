class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
    	t.string :Name
		t.text :Description
		t.text :Ubication
		t.references :scores, index: true
		t.references :businessmans, index: true
      	t.timestamps null: false
    end
  end
end