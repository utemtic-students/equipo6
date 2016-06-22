class TuristController < ApplicationController
  def index	
  	@sites = Site.select('sites.Name AS Name, 
  						sites.Description AS Description,
  						photos.SRC AS SRC').joins("LEFT JOIN photos ON photos.sites_id = sites.id ");
    @types = Type.all;
  	arraySite = [];
  	@resultSite = [];
  	i=1;
  	@sites.each do |site|
  		type = Type.where("sites_id = ?", site.id);
  		category = Type.where("sites_id = ?", site.id);
  		@resultSite[i] = {"type" => type, "category" => category, "site" => site};
  		i = i+1;
  	end
  	render layout: "turist";
  end
  def showSites
     @sites = Site.select('sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
     .joins("LEFT JOIN photos ON photos.sites_id = sites.id ")
     .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id")
     .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
     .where("types.Name = 'Restaurant'");
     render :json => @sites[0];
  end
end

