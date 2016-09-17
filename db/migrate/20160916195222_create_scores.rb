class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
    	t.integer :Calidad
    	t.float :Ambiente
    	t.float :Servicio
    	t.float :Precio
    	t.timestamps null: false
    end
  end
end
