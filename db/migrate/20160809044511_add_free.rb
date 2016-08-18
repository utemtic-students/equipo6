class AddFree < ActiveRecord::Migration
  def change
  add_column :sites, :IsFree, :integer
  end
end
