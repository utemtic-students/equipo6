class CreateSiteXCompanions < ActiveRecord::Migration
  def change
    create_table :site_x_companions do |t|
    	t.references :sites, index: true, foreign_key: true
    	t.references :companions, index: true, foreign_key: true
      	t.timestamps null: false
    end
  end
end
