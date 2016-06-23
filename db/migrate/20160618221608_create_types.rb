class CreateTypes < ActiveRecord::Migration
  def change
    create_table :typees do |t|
    	t.string :Name
    	t.text :Description
      	t.timestamps null: false
    end
  end
end
