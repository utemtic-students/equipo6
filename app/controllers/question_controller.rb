class QuestionController < ApplicationController
  def index
  	@types = Type.all;
  	render layout: "landing"
  end
end
