class CreateClasifications < ActiveRecord::Migration
  def change
    create_table :clasifications do |t|
    	t.string :Name
    	t.text :Description
      	t.timestamps null: false
    end
  end
end
