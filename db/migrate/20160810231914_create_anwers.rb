class CreateAnwers < ActiveRecord::Migration
  def change
    create_table :anwers do |t|
    	t.string :Body
    	t.string :SRC
    	t.string :Description
	    t.timestamps null: false
    end
  end
end
