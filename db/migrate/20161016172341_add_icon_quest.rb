class AddIconQuest < ActiveRecord::Migration
  def change
  		add_column :questions, :IconSRC, :string
  end
end
