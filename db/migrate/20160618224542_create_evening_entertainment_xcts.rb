class CreateEveningEntertainmentXcts < ActiveRecord::Migration
  def change
    create_table :evening_entertainment_xcts do |t|
		t.references :evening_entertainments, name: :idevening_entertainments
		t.references :clasifications, index: true
		t.references :types, index: true
      	t.timestamps null: false
    end
  end
end
