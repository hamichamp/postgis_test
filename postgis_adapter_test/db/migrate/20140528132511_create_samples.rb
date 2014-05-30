class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.point :latlon
      t.multi_polygon :shape

      t.timestamps
    end
  end
end
