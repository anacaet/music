class Song < ActiveRecord::Base
  attr_accessible :albums_id, :lenght, :title
  
  belongs_to :album
  
  validates :title, :presence => true
  validates :albums_id, :presence => true
end
