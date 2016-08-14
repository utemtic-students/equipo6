class TuristController < ApplicationController
  def index
    if params[:fin]
      answers_id = params[:answers_id].split(',');
        
      @sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                   .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                   .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                   .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                   .joins("LEFT JOIN answer_x_types  ON answer_x_types.types_id = types.id")
                   .joins("LEFT JOIN answer_x_clasifications  ON answer_x_clasifications.clasifications_id = clasifications.id")
                   .where("answer_x_clasifications.answers_id IN (?)", answers_id).distinct();


    elsif params[:type_id] && params[:clasification_id]
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

    render layout: "landing"
  end
end
