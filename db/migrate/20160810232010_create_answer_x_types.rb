class CreateAnswerXTypes < ActiveRecord::Migration
  def change
    create_table :answer_x_types do |t|
    	t.references :answers, index: true, foreign_key: true
    	t.references :types, index: true, foreign_key: true
      	t.timestamps null: false
    end
  end
end
