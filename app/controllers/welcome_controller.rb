class WelcomeController < ApplicationController
  def index
  	@types = Type.all;
 	render layout: "welcome"
  end

end
