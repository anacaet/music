class Song < ActiveRecord::Base
  attr_accessible :albums_id, :lenght, :title
  
  belongs_to :album
end
