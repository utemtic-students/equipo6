class InsertTypes < ActiveRecord::Migration
  def change
  	t = Type.new
	t.id = 1
	t.Name = "Restaurantes"
	t.save
	t = Type.new
	t.id = 2
	t.Name = "Actividades"
	t.save
	t = Type.new
	t.id = 3
	t.Name = "Plazas"
	t.save
	t = Type.new
	t.id = 4
	t.Name = "Bares"
	t.save
	t = Type.new
	t.id = 5
	t.Name = "Antros"
	t.save
	t = Type.new
	t.id = 6
	t.Name = "Playas"
	t.save
  end
end
