class TuristController < ApplicationController
  def index	
  	@site = Site.select('sites.Name AS Name, 
  						sites.Description AS Description,
  						photos.SRC AS SRC').joins("LEFT JOIN photos ON photos.sites_id = sites.id ");
  	arraySite = [];
  	@resultSite = [];
  	i=1;
  	@site.each do |site|
  		type = Type.where("sites_id = ?", site.id);
  		category = Type.where("sites_id = ?", site.id);
  		@resultSite[i] = {"type" => type, "category" => category, "site" => site};
  		i = i+1;
  	end
  	render layout: "turist";
  end
end

