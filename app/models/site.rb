class Site < ActiveRecord::Base
	 has_many :siteXClasification
	 has_many :siteXType
	 has_many :photo
end
