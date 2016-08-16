class AddFinQuestion < ActiveRecord::Migration
  def change
  	  		add_column :questions, :Fin, :integer
  end
end
