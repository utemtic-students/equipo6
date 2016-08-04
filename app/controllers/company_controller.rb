class CompanyController < ApplicationController
    def  business
        render layout: "company"
    end

    def insertSite
        if params[:postSite]
            site = Site.new
            site.Name = params[:postSite][:Name]
            site.Name = params[:postSite][:Name]
            site.save
            site_id = Site.select("*").where("Name = ?",params[:postSite][:Name])
            redirect_to :controller => 'company', :action => 'insertClasification', :site_id => site.id
        else
            render layout: "company"
        end
    end
    def saveSite
        render layout: "company"
    end
    def insertClasification
        if params[:postClasification] 
            render :text => params[:postClasification].inspect
        else
             params[:site_id]
            @clasifications = Clasification.all
            @types = Type.all
            render layout: "company"
        end
       
    end
    def edit
        render layout: "company"
    end

    def pagos
        render layout: "company"
    end
    def mySite
        render layout: "company"
    end
end
