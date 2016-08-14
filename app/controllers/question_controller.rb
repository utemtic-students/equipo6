class QuestionController < ApplicationController
 	def index
 		@questions_id = params[:questions_id] ? params[:questions_id].to_i : 1;
 		@answers_id = params[:answers_id] ? params[:answers_id] : "";
	  	@questions = Question.select('*').where("questions.id = 1 ");
		@answers = Answer.select('*')
			.joins("LEFT JOIN question_x_answers AS qxa ON qxa.answers_id = answers.id ")
			.where("qxa.questions_id = ? ", @questions_id);
		@questions.each do |question|
		   @fin = question.Fin;
		end
		@types = Type.all;
	  	render layout: "landing"
	end
end
