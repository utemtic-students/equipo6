class QuestionsController < ApplicationController
  def question
  	
  	@Surveyfirst = Survey.first
  	
  		

	render layout: "questions"
  end
end
