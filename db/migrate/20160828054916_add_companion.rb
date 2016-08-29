class AddCompanion < ActiveRecord::Migration
  def change
  	c = Companion.new
	c.id = 1
	c.Name = "Amigos"
	c.save
	c = Companion.new
	c.id = 2
	c.Name = "Familia"
	c.save
	c = Companion.new
	c.id = 3
	c.Name = "Pareja"
	c.save
	c = Companion.new
	c.id = 4
	c.Name = "Solo"
	c.save
  end
end
