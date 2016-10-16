class AddImgDescription < ActiveRecord::Migration
  def change
  	add_column :photos, :Description, :string
	add_column :photos, :Title, :string

  end
end
