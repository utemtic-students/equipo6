class RemuveSurveysAnswer < ActiveRecord::Migration
  def change
  		remove_column :surveys, :answer, :string 
  		remove_column :surveys, :questions, :string
  		add_column :surveys, :Questions, :string
  		add_column :surveys, :Type, :string
  end
end
