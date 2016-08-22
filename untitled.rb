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


	s = Site.new
	s.id = 15
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Playa la audiencia"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Kayack"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 15
	p.SRC = "sites/kayacks/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 15
	p.SRC = "sites/kayacks/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 15
	p.SRC = "sites/kayakcs/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 15
	p.SRC = "sites/kayacks/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 15
	sxc.clasifications_id = 3
	sxc.save

	s = Site.new
	s.id = 16
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Playa la audiencia"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Paseo Cuyutlan"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 16
	p.SRC = "sites/paseoCuyutlan/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 16
	p.SRC = "sites/paseoCuyutlan/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 16
	p.SRC = "sites/paseoCuyutlan/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 16
	p.SRC = "sites/paseoCuyutlan/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 16
	sxc.clasifications_id = 3
	sxc.save


	s = Site.new
	s.id = 17
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Playa la audiencia"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Paseo En Barco"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 17
	p.SRC = "sites/paseoBarco/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 17
	p.SRC = "sites/paseoBarco/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 17
	p.SRC = "sites/paseoBarco/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 17
	p.SRC = "sites/paseoBarco/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 17
	sxc.clasifications_id = 3
	sxc.save

	s = Site.new
	s.id = 18
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "La Boquita"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "La Boquita"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 18
	p.SRC = "sites/laBoquita/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 18
	p.SRC = "sites/laBoquita/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 18
	p.SRC = "sites/laBoquita/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 18
	p.SRC = "sites/laBoquita/img3.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 18
	sxc.clasifications_id = 33
	sxc.save

	s = Site.new
	s.id = 19
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Las Brisas"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Las Brisas"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 19
	p.SRC = "sites/lasBrisas/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 19
	p.SRC = "sites/lasBrisas/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 19
	p.SRC = "sites/lasBrisas/img2.jpg"
	p.Section = "Galeria"
	p.save
	

	sxc = SiteXClasification.new
	sxc.sites_id = 19
	sxc.clasifications_id = 33
	sxc.save


	s = Site.new
	s.id = 20
	s.TelNumber =  10000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Las Hadas"
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Las Hadas"
	s.Description ="Ven a ser parte de una experiencia única, donde recorreras a gran velocidad las bahías mas hermosas de manzanillo"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 20
	p.SRC = "sites/lasHadas/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 20
	p.SRC = "sites/lasHadas/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 20
	p.SRC = "sites/lasHadas/img2.jpg"
	p.Section = "Galeria"
	p.save
	

	sxc = SiteXClasification.new
	sxc.sites_id = 20
	sxc.clasifications_id = 33
	sxc.save
  end
end
