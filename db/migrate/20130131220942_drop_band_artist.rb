class DropBandArtist < ActiveRecord::Migration
  def change
    drop_table :band_artists
  end
end
