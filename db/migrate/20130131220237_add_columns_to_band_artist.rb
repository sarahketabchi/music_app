class AddColumnsToBandArtist < ActiveRecord::Migration
  def change
    add_column :band_artists, :artist_id, :integer
    add_column :band_artists, :band_id, :integer
  end
end
