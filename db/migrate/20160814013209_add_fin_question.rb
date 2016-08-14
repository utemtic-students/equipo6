class AddFinQuestion < ActiveRecord::Migration[5.0]
  def change
  		add_column :questions, :Fin, :integer
  end
end
