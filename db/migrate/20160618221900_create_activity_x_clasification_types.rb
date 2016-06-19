class CreateActivityXClasificationTypes < ActiveRecord::Migration
  def change
    create_table :activity_x_clasification_types do |t|
		t.references :activities, index: true
		t.references :clasifications, index: true
		t.references :types, index: true
      	t.timestamps null: false
    end
  end
end
