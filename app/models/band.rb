class Band < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :artists
  has_many :recordings
end
