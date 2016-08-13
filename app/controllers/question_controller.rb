class QuestionController < ApplicationController
  def index
  	@questions = Question.select('*').where("questions.id = 1 ");
	@answers = Answer.select('*')
		.joins("LEFT JOIN question_x_answers AS qxa ON qxa.answers_id = answers.id ")
		.where("qxa.questions_id = 1 ");
	@types = Type.all;
  	render layout: "landing"
  end
end
