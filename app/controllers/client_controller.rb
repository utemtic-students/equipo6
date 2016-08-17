class ClientController < ApplicationController
  
  def index
    
    end

  def show
  @article = Article.find(params[:id])
  end

  def new
  end

  def create
  
  @Site = Site.new(site_params)
  @Site.save
  redirect_to @Site

  end  

  private
  def site_params
    params.require(:Site).permit(:TelNumber,:Municipality,:State,:Colony,:OutdoorNumbe,:IndoorNumbe,:Name,:Latitud,:Longitud, :score,:businessmans,:Description)
  end

end
