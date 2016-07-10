class CreateSurveyXAnswers < ActiveRecord::Migration
  def change
    create_table :survey_x_answers do |t|
    	t.references :surveys, index: true
		t.references :answers, index: true
      	t.timestamps null: false
    end
  end
end
