class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
		t.string :Name
		t.text :Description
      	t.timestamps null: false
    end
  end
end
