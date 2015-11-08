#
class User < ActiveRecord::Base
  # authentication stores password stuff
  include Authentication

  has_many :books
end
