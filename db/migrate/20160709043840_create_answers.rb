class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :numberansw
      t.string :answers	
      t.timestamps null: false
    end
  end
end
