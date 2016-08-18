class Site2 < ActiveRecord::Migration
  def change
  	s = Site.new
	s.id = 12
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Playa la audiencia"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Moto Acuatica"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 12
	p.SRC = "sites/motoAcuatica/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 12
	p.SRC = "sites/motoAcuatica/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 12
	p.SRC = "sites/motoAcuatica/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 12
	p.SRC = "sites/motoAcuatica/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 12
	sxc.clasifications_id = 2
	sxc.save


	s = Site.new
	s.id = 13
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Playa la audiencia"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Fly Board"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 13
	p.SRC = "sites/flyBoard/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 13
	p.SRC = "sites/flyBoard/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 13
	p.SRC = "sites/flyBoard/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 13
	p.SRC = "sites/flyBoard/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 13
	sxc.clasifications_id = 2
	sxc.save

	s = Site.new
	s.id = 14
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Playa la audiencia"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Banana"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 14
	p.SRC = "sites/banana/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 14
	p.SRC = "sites/banana/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 14
	p.SRC = "sites/banana/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 14
	p.SRC = "sites/banana/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 14
	sxc.clasifications_id = 2
	sxc.save

  end
end
