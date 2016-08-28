class CreateAnswerXQuestions < ActiveRecord::Migration
  def change
    create_table :answer_x_questions do |t|
    	t.references :answers, index: true, foreign_key: true
    	t.references :questions, index: true, foreign_key: true
      	t.timestamps null: false
    end
  end
end
