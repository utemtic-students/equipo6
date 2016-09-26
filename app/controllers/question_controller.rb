class QuestionController < ApplicationController
 	def index
		questions = Question.select('*');
		@questions = Array.new;
		questions.each do |quest|
			answer = Answer.select('*')
			.joins("LEFT JOIN question_x_answers AS qxa ON qxa.answers_id = answers.id ")
			.where("qxa.questions_id = ? ", quest.id);
	        @questions.push(:question => quest, :answer => answer);
      	end
		
		
		
		@types = Type.all;
		render layout: "landing"
		
	  	
	end
	def questions
		if params[:answers_id]!=''
			answers[]
			params[:answers_id].split(',').each do |answer|
				answers.push(answer)
			end
			ids = AnswerXQuestion.select('questions_id').where("answers_id = ? ", answer);
			idX = '';
				ids.each do |id|
						idX = id.questions_id;
				end
			render :json => ids;
		end
	end
	def newQuest
		idQuest=[]
		ids = AnswerXQuestion.select('questions_id').where("answers_id = ? ", params[:item]);
		ids.each do |id|
			idQuest.push(id.questions_id)
		end
		questions = Question.select('id').where("questions.id IN (?) ", idQuest);
		render :json => {
						    "quest": questions,
						}
	end
	def validarSiguiente
		id = QuestionXAnswer.select('questions_id').where("answers_id = ? ", params[:item]);
		render :json => {
						    "quest": id,
						}
	end
	def desmarcar
		id = QuestionXAnswer.select('answers_id').where("questions_id = ? ", params[:item]);
		render :json => {
						    "answers": id,
						}
	end
end
