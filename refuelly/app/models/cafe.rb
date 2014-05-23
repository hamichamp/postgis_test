class Cafe < ActiveRecord::Base
  self.table_name = "cafes"
  attr_accessible :latitude, :longitude, :name
end
