class ChangeLongitudeAndLatitudeOnEvents < ActiveRecord::Migration
  def change
    change_column :events, :longitude, :decimal, precision: 9, scale: 6
    change_column :events, :latitude, :decimal, precision: 9, scale: 6
  end
end
