class CreateBandArtists < ActiveRecord::Migration
  def change
    create_table :band_artists do |t|

      t.timestamps
    end
  end
end
