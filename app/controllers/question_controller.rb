class QuestionController < ApplicationController
 	def index
 		@questions_id = params[:questions_id] ? params[:questions_id].to_i : 1;
 		@answers_id = params[:answers_id] ? params[:answers_id] : 0;
 		@answers_sec = params[:answers_sec] ? params[:answers_sec]: 0;
 		@answers_del = params[:answers_del] ? params[:answers_del]: 0;
 		@allQuest = params[:allQuest] ? params[:allQuest]: 0;
 		questionOld = @questions_id;

 		bandera = true;
 		cont = 1;

 		if @questions_id > 2
 			if @questions_id == 3
 				cont = 0;
 				answers = @answers_id.split(',');
 			else
 				answers = [];
 				answersExist = @answers_id.split(',');
 				answersDel = @answers_del.split(',');
 				answersExist.each do |ext|
 					if !answersDel.include? ext
 						answers.push(ext);
 					end
 					
 				end
 			end
 			answers.each do |answer|
 				answer = answer.to_i;
 				if answer > 4
 					if bandera
 						bandera = false;
 						ids = AnswerXQuestion.select('questions_id').where("answers_id = ? ", answer);
						ids.each do |id|
			   				@questions_id = id.questions_id;
						end
						if @questions_id == questionOld
							bandera = true;
						else
							allquest = @allQuest.split(',');
							if allquest.include? @questions_id.to_s 
								bandera = true;
							else
								@allQuest += "," + @questions_id.to_s;
								cont = cont + 1;
							end
							
						end
						@answers_del  += "," + answer.to_s;
 						@answers_sec = '';
 					else
 						@answers_sec += "," + answer.to_s;
 					end
 				end
			end
		else
			bandera = false;
 		end
		@questions = Question.select('*').where("questions.id = ? ", @questions_id);
		@answers = Answer.select('*')
		.joins("LEFT JOIN question_x_answers AS qxa ON qxa.answers_id = answers.id ")
		.where("qxa.questions_id = ? ", @questions_id);

		if bandera 
			cont = 0;
		end
		@types = Type.all;
		if cont == 0
			redirect_to  controller: 'turist', action: 'index', answers_id: @answers_id
		else
			render layout: "landing"
		end
	  	
	end
end
