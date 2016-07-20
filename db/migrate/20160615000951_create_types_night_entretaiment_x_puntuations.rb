class CreateTypesNightEntretaimentXPuntuations < ActiveRecord::Migration
  def change
    create_table :types_night_entretaiment_x_puntuations do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
