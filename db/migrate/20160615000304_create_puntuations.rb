class CreatePuntuations < ActiveRecord::Migration
  def change
    create_table :puntuations do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
