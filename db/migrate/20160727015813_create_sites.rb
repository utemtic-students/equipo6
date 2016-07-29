class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
    	t.string :TelNumber
  		t.string :Municipality
  		t.string :State
  		t.string :Colony
		t.integer :OutdoorNumbe
		t.integer :IndoorNumbe
		t.string :Name
		t.text :Description
		t.integer :Latitud
		t.integer :Longitud
		t.references :scores, index: true
		t.references :businessmans, index: true
		t.timestamps null: false
    end
  end
end
