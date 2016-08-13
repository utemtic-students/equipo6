class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
		t.string :Body
    	t.string :SRC
    	t.string :Description
	    t.timestamps null: false
      	t.timestamps
    end
  end
end
