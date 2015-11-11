#
class User < ActiveRecord::Base
  # authentication stores password stuff
  include Authentication

  has_one :profile, autosave: true

  has_many :bikes

  has_many :favorite_bikes
  has_many :favorites, through: :favorite_bikes, source: :bike
                             # class_name: 'Bike',
                             # foreign_key: 'bike_id'
 # # has_many :favorited_bikes, :through => :favorites, :source => <name>

end
