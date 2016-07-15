class CompanyController < ApplicationController
  def  business
  	render layout: "company"
  end

  def insertSite
	  render layout: "company"
  end
  def saveSite
    render :text => params[:post].inspect
    render layout: "company"
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
