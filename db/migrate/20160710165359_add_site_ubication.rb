class AddSiteUbication < ActiveRecord::Migration
  def change
  	add_column :sites, :TelNumber, :integer
  	add_column :sites, :Municipality, :string
  	add_column :sites, :State, :string
  	add_column :sites, :Colony, :string 
	add_column :sites, :OutdoorNumbe, :integer
	add_column :sites, :IndoorNumbe, :integer
	remove_column :sites, :Ubication, :text

  end
end
