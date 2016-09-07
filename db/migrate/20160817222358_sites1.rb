class Sites1 < ActiveRecord::Migration
  def change
  	s = Site.new
	s.id = 1
	s.TelNumber = 3322089
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Avenida Lázaro Cárdenas , Las Brisas."
	s.OutdoorNumbe = 1613
	s.IndoorNumbe = 
	s.Name = "El Costeño"
	s.Description ="Una gran tradición en Manzanillo, ven y disfruta de un café en un ambiente confortable."
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 1
	p.SRC = "elCosteño/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 1
	p.SRC = "elCosteño/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 1
	p.SRC = "elCosteño/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 1
	p.SRC = "elCosteño/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 1
	p.SRC = "elCosteño/gal/img4.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 1
	p.SRC = "elCosteño/gal/img5.jpg"
	p.Section = "Galeria"
	p.save
	sxc = SiteXClasification.new
	sxc.sites_id = 1
	sxc.clasifications_id = 22
	sxc.save
	sxc = SiteXClasification.new
	sxc.sites_id = 1
	sxc.clasifications_id = 10
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 1
	sxt.types_id = 1
	sxt.save


	s = Site.new
	s.id = 2
	s.TelNumber = 3123
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Av. Constitución , Vista Hermosa"
	s.OutdoorNumbe = 1829
	s.IndoorNumbe = 
	s.Name = "Daisushi"
	s.Description ="Disfruta de los exquistos platillos que solo en Daiisushi te ofrece, ven y disfruta de un ambiente en armonía."
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 2
	p.SRC = "daiisushi/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 2
	p.SRC = "daiisushi/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 2
	p.SRC = "daiisushi/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 2
	p.SRC = "daiisushi/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 2
	p.SRC = "daiisushi/gal/img4.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 2
	p.SRC = "daiisushi/gal/img5.jpg"
	p.Section = "Galeria"
	p.save
	sxc = SiteXClasification.new
	sxc.sites_id = 2
	sxc.clasifications_id = 23
	sxc.save
	sxc = SiteXClasification.new
	sxc.sites_id = 2
	sxc.clasifications_id = 18
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 2
	sxt.types_id = 1
	sxt.save



	s = Site.new
	s.id = 3
	s.TelNumber =333
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Av. Lázaro Cárdenas,  Manzanillo, Col."
	s.OutdoorNumbe = 28217
	s.IndoorNumbe = 5
	s.Name = "Ante"
	s.Description ="Un restauran bistró que te deleitara con sus cortes finos y exquisitos platillos "
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/gal/img4.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/gal/img5.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 3
	p.SRC = "ante/gal/img6.jpg"
	p.Section = "Galeria"
	p.save
	sxc = SiteXClasification.new
	sxc.sites_id = 3
	sxc.clasifications_id = 26
	sxc.save
	sxc = SiteXClasification.new
	sxc.sites_id = 3
	sxc.clasifications_id = 22
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 3
	sxt.types_id = 1
	sxt.save

	s = Site.new
	s.id = 4
	s.TelNumber = 333
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Boulevard Miguel de la Madrid Hurtado, Playa Azul Salagua."
	s.OutdoorNumbe = 28219
	s.IndoorNumbe = 
	s.Name = "El Camarón Feliz"
	s.Description ="Un lugar acogedor, perfecto para llevar a la pareja a una cena especial y disfrutar de una platica con esa persona especial."
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 4
	p.SRC = "elCamaronFeliz/logo.png"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 4
	p.SRC = "elCamaronFeliz/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 4
	p.SRC = "elCamaronFeliz/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 4
	p.SRC = "elCamaronFeliz/gal/img4.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 4
	sxc.clasifications_id = 20
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 4
	sxt.types_id = 1
	sxt.save

	s = Site.new
	s.id = 5
	s.TelNumber = 333
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "xx xx de la xx xx, xx xx xx."
	s.OutdoorNumbe = 00
	s.IndoorNumbe = 
	s.Name = "El Marinero"
	s.Description ="Disfruta de la comida Española o mariscos en compañía de tu familia y amigos. "
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 5
	p.SRC = "elMarinero/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 5
	p.SRC = "elMarinero/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 5
	p.SRC = "elMarinero/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 5
	p.SRC = "elMarinero/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 5
	p.SRC = "elMarinero/gal/img4.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 5
	p.SRC = "elMarinero/gal/img5.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 5
	sxc.clasifications_id = 20
	sxc.save
	sxc = SiteXClasification.new
	sxc.sites_id = 5
	sxc.clasifications_id = 24
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 5
	sxt.types_id = 1
	sxt.save

	s = Site.new
	s.id = 6
	s.TelNumber = 3322
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Barrio 5 calle Mango"
	s.OutdoorNumbe = 10
	s.IndoorNumbe = 6
	s.Name = "La Katana"
	s.Description ="Disfruta de una deliciosa comida asiática"
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/gal/img4.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/gal/img5.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 6
	p.SRC = "laKatana/gal/img6.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 6
	sxc.clasifications_id = 25
	sxc.save
	sxc = SiteXClasification.new
	sxc.sites_id = 6
	sxc.clasifications_id = 18
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 6
	sxt.types_id = 1
	sxt.save



	s = Site.new
	s.id = 7
	s.TelNumber =  333
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Manzanillo, Col., División del Norte, Las Brisas, Playa Azul las Brisas."
	s.OutdoorNumbe = 1411
	s.IndoorNumbe = 
	s.Name = "La Vainilla"
	s.Description ="Un lugar acogedor, perfecto para llevar a la pareja por un café y disfrutar de una platica con esa persona especial "
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 7
	p.SRC = "laVainilla/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 7
	p.SRC = "laVainilla/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 7
	p.SRC = "laVainilla/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 7
	p.SRC = "laVainilla/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 7
	p.SRC = "laVainilla/gal/img4.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 7
	sxc.clasifications_id = 22
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 7
	sxt.types_id = 1
	sxt.save


	s = Site.new
	s.id = 8
	s.TelNumber =  000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Lic. Miguel de la Madrid Hurtado , El Tajo."
	s.OutdoorNumbe = 5010 
	s.IndoorNumbe = 
	s.Name = "La Marina"
	s.Description ="Un lugar acogedor, perfecto para llevar a la pareja a una cena especial y disfrutar de una platica con esa persona especial "
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img4.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img5.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img6.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 8
	p.SRC = "laMarina/gal/img7.jpg"
	p.Section = "Galeria"
	p.save

	sxc = SiteXClasification.new
	sxc.sites_id = 8
	sxc.clasifications_id = 26
	sxc.save
	sxc = SiteXClasification.new
	sxc.sites_id = 8
	sxc.clasifications_id = 20
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 8
	sxt.types_id = 1
	sxt.save

	s = Site.new
	s.id = 9
	s.TelNumber =  000
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Las Palmas."
	s.OutdoorNumbe =  
	s.IndoorNumbe = 
	s.Name = "Plaza las palmas"
	s.Description ="¿Te gusta consentir a tu pareja?. Visiten plaza las palmas y pasen de una velada extraordinaria."
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 9
	p.SRC = "plazaLasPalmas/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 9
	p.SRC = "plazaLasPalmas/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 9
	p.SRC = "plazaLasPalmas/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 9
	p.SRC = "plazaLasPalmas/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 9
	p.SRC = "plazaLasPalmas/gal/img4.jpg"
	p.Section = "Galeria"
	p.save



	sxc = SiteXClasification.new
	sxc.sites_id = 9
	sxc.clasifications_id = 32
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 9
	sxt.types_id = 3
	sxt.save



	s = Site.new
	s.id = 10
	s.TelNumber =  3343
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Plaza las Palmas, Blvd Miguel de la Madrid, Salahua."
	s.OutdoorNumbe = 1046
	s.IndoorNumbe = 
	s.Name = "Wing's Army"
	s.Description ="Perfecto para disfrutar de la compañía de tus amigos, un bar que te encantara."
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 10
	p.SRC = "wingsArmy/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 10
	p.SRC = "wingsArmy/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 10
	p.SRC = "wingsArmy/gal/img2.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 10
	p.SRC = "wingsArmy/gal/img3.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 10
	p.SRC = "wingsArmy/gal/img4.jpg"
	p.Section = "Galeria"
	p.save


	sxc = SiteXClasification.new
	sxc.sites_id = 10
	sxc.clasifications_id = 21
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 10
	sxt.types_id = 4
	sxt.save


	s = Site.new
	s.id = 11
	s.TelNumber =  100
	s.Municipality = "Manzanillo"
	s.State = "Colima"
	s.Colony = "Miguel de la Madrid, Santiago Centro."
	s.OutdoorNumbe = 15675
	s.IndoorNumbe = 
	s.Name = "Bar Hoa"
	s.Description ="Disfruta la belleza de la playa mientras tomas una rica bebida o comes uno de nuestros deliciosos platillos."
	s.IsFree= 0
	s.save
	p = Photo.new
	p.sites_id = 11
	p.SRC = "barHoa/logo.jpg"
	p.Section = "Principal"
	p.save
	p = Photo.new
	p.sites_id = 11
	p.SRC = "barHoa/gal/img1.jpg"
	p.Section = "Galeria"
	p.save
	p = Photo.new
	p.sites_id = 11
	p.SRC = "barHoa/gal/img2.jpg"
	p.Section = "Galeria"
	p.save


	
	sxc = SiteXClasification.new
	sxc.sites_id = 11
	sxc.clasifications_id = 15
	sxc.save
	sxt = SiteXType.new
	sxt.sites_id = 11
	sxt.types_id = 4
	sxt.save
	sxt = SiteXType.new
	sxt.sites_id = 11
	sxt.types_id = 1
	sxt.save
	sxt = SiteXType.new
	sxt.sites_id = 11
	sxt.types_id = 6
	sxt.save

  end
end
