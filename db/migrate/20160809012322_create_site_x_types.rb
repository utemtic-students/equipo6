class CreateSiteXTypes < ActiveRecord::Migration
  def change
    create_table :site_x_types do |t|
    	t.references :sites, index: true, foreign_key: true
    	t.references :types, index: true, foreign_key: true
      	t.timestamps null: false
    end
  end
end
