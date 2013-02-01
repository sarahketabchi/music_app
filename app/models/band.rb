class Band < ActiveRecord::Base
  attr_accessible :name
  has_many :artists
  has_many :recordings
end
