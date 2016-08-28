class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
		t.string :Body
    	t.string :SRC
    	t.string :Description
	    t.timestamps null: false
      	t.timestamps
      	t.timestamps null: false
    end
  end
end
