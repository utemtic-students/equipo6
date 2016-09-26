class TuristController < ApplicationController
  def index
    if params[:answers_id]
      answers_id = params[:answers_id].split(',');
      totalAnswer =[];
      answers_id.each do |answer|
        answer = answer.to_i;
        totalAnswer.push(answer);
        
      end  
      if answers_id.count == 0
         sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                     .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                     .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                     .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                     .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                     .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id").distinct();
      else
        idTypes = AnswerXType.select('answer_x_types.types_id')
                     .joins('LEFT JOIN  answers ON answers.id  = answer_x_types.answers_id')
                     .where('answers.id IN(?)',totalAnswer).distinct();
        totalTypes =[];
        idTypes.each do |typ|
           totalTypes.push(typ.types_id);
        end
        idClasification = AnswerXClasification.select('answer_x_clasifications.clasifications_id')
                     .joins('LEFT JOIN  answers ON answers.id  = answer_x_clasifications.answers_id')
                     .where('answers.id IN(?)',totalAnswer).distinct();
        totalClasifications =[];
        idClasification.each do |cls|
           totalClasifications.push(cls.clasifications_id);
        end
        if idClasification.count == 0
          sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                     .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                     .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                     .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                     .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                     .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                     .where("site_x_types.types_id IN (?)", totalTypes).distinct();
        else
          sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                     .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                     .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                     .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                     .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                     .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                     .where("site_x_types.types_id IN (?) AND site_x_clasifications.clasifications_id IN (?)", totalTypes, totalClasifications).distinct();
        end
      end
    elsif params[:type_id] && params[:clasification_id]
      sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                   .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                   .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                   .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                   .where("types.id = ? AND clasifications.id = ?",params[:type_id],params[:clasification_id]);
    elsif params[:type_id]
      types_id = params[:type_id].split(',');
      totalTypes =[];
      types_id.each do |item|
        item = item.to_i;
        totalTypes.push(item);
      end  
      sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_types ON  site_x_types.sites_id = sites.id ")
                   .joins("LEFT JOIN types ON types.id = site_x_types.types_id")
                   .where("types.id IN (?)",totalTypes);
    elsif params[:clasification_id]
        sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                   .joins("LEFT JOIN photos ON photos.sites_id = sites.id AND photos.Section = 'Principal'")
                   .joins("LEFT JOIN site_x_clasifications ON  site_x_clasifications.sites_id = sites.id ")
                   .joins("LEFT JOIN clasifications ON clasifications.id = site_x_clasifications.clasifications_id")
                   .where("clasifications.id = ?",params[:clasification_id]);
    else
      sites = Site.select('sites.id AS id, sites.Name AS Name, sites.Description AS Description, photos.SRC AS SRC')
                 .joins("LEFT JOIN photos ON photos.sites_id = sites.id ")
                 .where("photos.Section = 'Principal'");
    end
    @sites = Array.new;
    sites.each do |site|
      clasifications = Array.new;
      types = Array.new;
      clasification = Clasification.select('clasifications.Name, clasifications.id')
                        .joins("LEFT JOIN site_x_clasifications ON clasifications.id = site_x_clasifications.clasifications_id ")
                        .where("sites_id = ?", site.id);
      type = Type.select('types.Name, types.id')
                        .joins("LEFT JOIN site_x_types ON types.id = site_x_types.types_id ")
                        .where("sites_id = ?", site.id);

      clasification.each do |cla|
        clasifications.push(:name => cla.Name, :id => cla.id);
      end
      type.each do |typ|
        types.push(:name => typ.Name, :id => typ.id);
      end
      @sites.push(:site => site, :clasification => clasifications, :type => types)
    end
    @types = Type.all;

    render layout: "landing"
  end
end
