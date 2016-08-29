class CreateCompanions < ActiveRecord::Migration
  def change
    create_table :companions do |t|
		t.string :Name
    	t.text :Description
      	t.timestamps null: false
    end
  end
end
