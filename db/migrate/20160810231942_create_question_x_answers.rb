class CreateQuestionXAnswers < ActiveRecord::Migration
  def change
    create_table :question_x_answers do |t|
    	t.references :questions, index: true, foreign_key: true
    	t.references :answers, index: true, foreign_key: true
      	t.timestamps null: false
    end
  end
end
