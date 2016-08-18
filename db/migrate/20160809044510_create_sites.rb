class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :TelNumber
      t.string :Municipality
      t.text :State
      t.text :Colony
      t.integer :OutdoorNumbe
      t.integer :IndoorNumbe
      t.text :Name
      t.integer :Latitud
      t.integer :Longitud
      t.integer :score
      t.text :businessmans
      t.text :Description

    end
  end
end
