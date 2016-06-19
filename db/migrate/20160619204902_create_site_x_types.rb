class CreateSiteXTypes < ActiveRecord::Migration
  def change
    create_table :site_x_types do |t|
    	t.references :sites, index: true
		t.references :types, index: true
      	t.timestamps null: false
    end
  end
end
