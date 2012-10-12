class Artist < ActiveRecord::Base
  attr_accessible :country, :name
  has_many :albums
end
