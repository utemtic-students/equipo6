class DetalleController < ApplicationController
  def index
  	@types = Type.all
  	render layout: "turist"
  end
end
