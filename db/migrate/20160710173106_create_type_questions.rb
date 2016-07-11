class CreateTypeQuestions < ActiveRecord::Migration
  def change
    create_table :type_questions do |t|

      t.timestamps null: false
    end
  end
end
