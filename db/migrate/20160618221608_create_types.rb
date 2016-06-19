class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
    	t.string :Name
    	t.text :Description
      	t.timestamps null: false
    end
  end
end
