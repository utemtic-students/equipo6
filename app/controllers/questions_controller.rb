class QuestionsController < ApplicationController
  def question
  	
  	Survey.all
  	@Surveyfirst = Survey.first
  	@SurveySecond = Survey.find(2)
  	@SurveyThird = Survey.find(3)



	render layout: "questions"
  end
end
