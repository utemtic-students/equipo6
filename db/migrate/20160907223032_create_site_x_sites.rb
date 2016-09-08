class CreateSiteXSites < ActiveRecord::Migration
  def change
    create_table :site_x_sites do |t|
		t.references :sites, index: true, foreign_key: true
    	t.integer :siteRel
      t.timestamps null: false
    end
  end
end
