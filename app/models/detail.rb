class Detail < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :comments

  validates :first_name,  :presence => true
  validates :last_name,   :presence => true,
  validates :email,       :presence => true,
  validates :comments,    :presence => true,
                          :length => { :minimum => 5 }
end
