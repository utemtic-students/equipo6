class TuristController < ApplicationController
  def index
  	if params[:type_id] && params[:clasification_id]
      @sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                   .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                   .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                   .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                   .where("types.id = ? AND clasifications.id = ?",params[:type_id],params[:clasification_id]);
    elsif params[:type_id]
      @sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                   .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                   .where("types.id = ?",params[:type_id]);
    elsif params[:clasification_id]
        @sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                   .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                   .where("clasifications.id = ?",params[:clasification_id]);
    else
      @sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                 .joins("LEFT JOIN photos ON photos.sites_id = sites.id ")
                 .where("photos.Section = 'Principal'");
    end
    @types = Type.all;
  	
    #arraySiete = [];
  	#@resultSite = [];
  	#i=1
#       @sites.each do |site|
#   		type = Type.where("sites_id =? "  site.id)
#   		category = Clasification.where("sites_id = ?" ,  site.id)
#   		@resultSite[i] = {"type" => type, "category" => category, "site" => site}
#   		i = i+1
#       end
  	render layout: "landing"
  end
end
