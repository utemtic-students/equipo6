class QuestionsController < ApplicationController
  def question
  	
 	@types = Type.all;
 	render layout: "questions"
  end
end
