class QuestionsController < ApplicationController
  def question
  	
  Answer.all
  @Answerfirst = Answer.first
  

  render layout: "questions"
  end

  def question2
  	
  end
end
