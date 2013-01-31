class Recording < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :band
  belongs_to :song

  def recording_name
    "#{band.name} | #{song.name}"
  end
end
