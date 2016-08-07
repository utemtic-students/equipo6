
t = Type.new
t.Name = "Restaurantes"
t.save
t = Type.new
t.Name = "Actividades"
t.save
t = Type.new
t.Name = "Bares"
t.save
t = Type.new
t.Name = "Playas"
t.save
c = Clasification.new
c.Name = "Acuaticas"
c.save
c = Clasification.new
c.Name = "Extremas"
c.save
c = Clasification.new
c.Name = "Tranquilas"
c.save
c = Clasification.new
c.Name = "Deportivas"
c.save
c = Clasification.new
c.Name = "Culturales"
c.save
c = Clasification.new
c.Name = "Caminatas"
c.save
c = Clasification.new
c.Name = "Conduccion"
c.save
c = Clasification.new
c.Name = "Relajacion"
c.save
c = Clasification.new
c.Name = "Amigos"
c.save
c = Clasification.new
c.Name = "Familia"
c.save
c = Clasification.new
c.Name = "Pareja"
c.save
c = Clasification.new
c.Name = "Solo"
c.save
c = Clasification.new
c.Name = "Baile"
c.save
c = Clasification.new
c.Name = "Disco"
c.save
c = Clasification.new
c.Name = "Reggae"
c.save
c = Clasification.new
c.Name = "Rock"
c.save
c = Clasification.new
c.Name = "Comida"
c.save
c = Clasification.new
c.Name = "China"
c.save
c = Clasification.new
c.Name = "Méxicana"
c.save
c = Clasification.new
c.Name = "Mariscos"
c.save
c = Clasification.new
c.Name = "Rapida"
c.save

s = Site.new
s.id = 61
s.TelNumber = 3322089
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
p.sites_id = 61
p.SRC = "restaurant/Logo.jpg"
p.Section = "Principal"
p.save
p = Photo.new
p.sites_id = 61
p.SRC = "restaurant/katana.jpg"
p.Section = "Galeria"
p.save
p = Photo.new
p.sites_id = 61
p.SRC = "restaurant/katana1.jpg"
p.Section = "Galeria"
p.save
p = Photo.new
p.sites_id = 61
p.SRC = "restaurant/katana2.jpg"
p.Section = "Galeria"
p.save
sxc = SiteXClasification.new
sxc.sites_id = 61
sxc.clasifications_id = 17
sxc.save
sxt = SiteXType.new
sxt.sites_id = 61
sxt.types_id = 1
sxt.save



s = Site.new
s.id = 62
s.TelNumber = 
s.Municipality = "Manzanillo"
s.State = "Colima"
s.Colony = "Centro Sector 2"
s.OutdoorNumbe = 
s.IndoorNumbe = 0
s.Name = "El Viejo"
s.Description ="Una hermosa playa pequeña en escondida en el centro de manzanillo. Padras disfrutar de un momento relajante con la compañia de tu familia y amigos."
s.IsFree= 1
s.save
p = Photo.new
p.sites_id = 62
p.SRC = "actividades/_DSC3472.jpg"
p.Section = "Principal"
p.save
p = Photo.new
p.sites_id = 62
p.SRC = "actividades/_DSC3491.jpg"
p.Section = "Galeria"
p.save
p = Photo.new
p.sites_id = 62
p.SRC = "inicio/surf.jpg"
p.Section = "Galeria"
p.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 1
sxc.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 3
sxc.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 8
sxc.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 9
sxc.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 10
sxc.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 11
sxc.save
sxc = SiteXClasification.new
sxc.sites_id = 62
sxc.clasifications_id = 12
sxc.save
sxt = SiteXType.new
sxt.sites_id = 62
sxt.types_id = 4
sxt.save
