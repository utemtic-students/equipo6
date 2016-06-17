class CreateActivityXPuntuations < ActiveRecord::Migration
  def change
    create_table :activity_x_puntuations do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
