class Album < ActiveRecord::Base
  attr_accessible :artists_id, :data, :genre, :name, :year
  
  belongs_to :artist
  
  has_many :songs
end
