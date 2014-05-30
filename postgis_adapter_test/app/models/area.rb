class Area < ActiveRecord::Base
# area = Area.intersects(35.56041, 139.62770)
  scope :intersects, -> (latitude, longitude, srid = 4326) {
    where(%{
      ST_Intersects(
        areas.geom,
        ST_GeographyFromText('SRID=%d;POINT(%f %f)')
      )
    } % [srid, longitude, latitude])
  }
end
