#
class User < ActiveRecord::Base
  # authentication stores password stuff
  include Authentication

  has_one :profile, autosave: true

  has_many :bikes

 #  has_many :favorited_bikes, through: :favorites,
 #                             # class_name: 'Bike',
 #                             source: :bike
 #                             #, foreign_key: 'bike_id'
 # # has_many :favorited_bikes, :through => :favorites, :source => <name>
 #  has_many :favorites
end
