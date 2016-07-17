class DetalleController < ApplicationController
  def index

  	if params[:site_id]
  		@site = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, sites.State AS Ubication').find(params[:site_id]);
	  	@type = Type.select('types.Name AS Name').joins("LEFT JOIN site_X_Types AS sxt ON sxt.types_id = types.id ").where('sxt.sites_id= ?', params[:site_id]);
	  	@clasification = Clasification.select('clasifications.Name AS Name').joins("LEFT JOIN site_X_Clasifications AS sxc ON sxc.clasifications_id = clasifications.id ").where('sxc.sites_id= ?', params[:site_id]);
	  	@photoPrincipal = Photo.select('SRC, Section').where("Section = 'Principal' AND sites_id= ?", params[:site_id]);
	  	@photosGaleria = Photo.select('SRC, Section').where("Section = 'Galeria' AND sites_id= ?", params[:site_id]);
	  	@types = Type.all
	  	render layout: "turist"
	else
  		redirect_to "/turist/index"
  	end
  end
end
