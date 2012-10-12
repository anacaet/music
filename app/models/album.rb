class Album < ActiveRecord::Base
  attr_accessible :artists_id, :data, :genre, :name, :year
  
  belongs_to :artist
  
  has_many :songs, :dependent => :destroy
  
  validates :name, :presence => true
  validates :artists_id, :presence => true
  
  has_attached_file :data, {
       :styles => {
         :medium => ["654x346>", :jpg],
         :small => ["260x400>", :jpg], 
         :thumb => ["75x75#", :jpg],
         :facebook_meta_tag =>["200x200#", :jpg] 
         }, 
          :convert_options => {
             :medium => "-quality 60",
             :small => "-quality 60",
             :thumb => "-quality 60",
             :facebook_meta_tag => "-quality 60" 
             } 
          }
end
