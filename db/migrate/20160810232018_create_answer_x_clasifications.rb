class CreateAnswerXClasifications < ActiveRecord::Migration
  def change
    create_table :answer_x_clasifications do |t|
		t.references :answers, index: true, foreign_key: true
    	t.references :clasifications, index: true, foreign_key: true
      	t.timestamps null: false
    end
  end
end
