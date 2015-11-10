#
class User < ActiveRecord::Base
  # authentication stores password stuff
  include Authentication

  has_one :profile, autosave: true

  has_many :books

  has_many :bikes

  # has_many :favorites
  # has_many :bikes, through: :favorites
end
