class CreateSiteXClasifications < ActiveRecord::Migration
  def change
    create_table :site_x_clasifications do |t|
		t.references :sites, index: true
		t.references :clasifications, index: true
    	t.timestamps null: false
    end
  end
end
