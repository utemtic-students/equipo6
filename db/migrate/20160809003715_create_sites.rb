class CreateSites < ActiveRecord::Migration
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
		t.decimal :Latitud
		t.decimal :Longitud
		t.references :scores, index: true
		t.references :businessmans, index: true
		t.timestamps null: false
    end
  end
end
