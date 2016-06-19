class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
		t.integer :Star1
    	t.integer :Star2
    	t.integer :Star3
    	t.integer :Star4
    	t.integer :Star5
      	t.timestamps null: false
    end
  end
end


