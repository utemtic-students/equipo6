class AddSiteXSite < ActiveRecord::Migration
  def change
  	sxs = SiteXSite.new
  	sxs.sites_id = 12
  	sxs.siteRel = 13
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 12
  	sxs.siteRel = 14
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 12
  	sxs.siteRel = 15
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 12
  	sxs.siteRel = 16
  	sxs.save
  	sxs.sites_id = 13
  	sxs.siteRel = 12
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 13
  	sxs.siteRel = 14
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 13
  	sxs.siteRel = 15
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 13
  	sxs.siteRel = 16
  	sxs.save
  	sxs.sites_id = 14
  	sxs.siteRel = 13
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 14
  	sxs.siteRel = 12
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 14
  	sxs.siteRel = 15
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 14
  	sxs.siteRel = 16
  	sxs.save
  	sxs.sites_id = 15
  	sxs.siteRel = 13
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 15
  	sxs.siteRel = 14
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 15
  	sxs.siteRel = 12
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 15
  	sxs.siteRel = 16
  	sxs.save
  	sxs.sites_id = 16
  	sxs.siteRel = 13
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 16
  	sxs.siteRel = 14
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 16
  	sxs.siteRel = 15
  	sxs.save
  	sxs = SiteXSite.new
  	sxs.sites_id = 16
  	sxs.siteRel = 12
  	sxs.save
  end
end
