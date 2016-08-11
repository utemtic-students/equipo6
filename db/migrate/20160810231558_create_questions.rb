class CreateQuestions < ActiveRecord::Migration
  def change
    create_table  :questions do |t|
    	t.string  :Question
    	t.integer :Section
    	t.string  :Descriptions
      	t.timestamps null: false
    end
  end
end
