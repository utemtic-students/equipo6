class DetailController < ApplicationController
  def index
	if params[:site_id]
		@site = Site.select('sites.*').find(params[:site_id]);
		@type = Type.select('types.Name AS Name').joins("LEFT JOIN site_X_Types AS sxt ON sxt.types_id = types.id ").where('sxt.sites_id= ?', params[:site_id]);
		@clasification = Clasification.select('clasifications.Name AS Name').joins("LEFT JOIN site_X_Clasifications AS sxc ON sxc.clasifications_id = clasifications.id ").where('sxc.sites_id= ?', params[:site_id]);
		@photoPrincipal = Photo.select('SRC, Section').where("Section = 'Principal' AND sites_id= ?", params[:site_id]);
		@photosGaleria = Photo.select('SRC, Section').where("Section = 'Galeria' AND sites_id= ?", params[:site_id]);
		@types = Type.all
		@sitesRel = SiteXSite.select('sites.*, photos.SRC')
							 .joins("LEFT JOIN sites ON site_x_sites.siteRel = sites.id")
							 .joins("LEFT JOIN photos ON photos.Section = 'Principal' AND  site_x_sites.siteRel = photos.sites_id")
							 .where("site_x_sites.sites_id = ?",params[:site_id] );
		render layout: "landing"
	else
  		redirect_to "/turist/index"
  	end
  end
end
