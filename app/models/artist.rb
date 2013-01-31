class Artist < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :band
  has_many :songs
end
