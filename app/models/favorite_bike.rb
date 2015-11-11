class FavoriteBike < ActiveRecord::Base
  # belongs_to :user
  belongs_to :user
  #, inverse_of: :bike
  belongs_to :bike
  #, inverse_of: :user
end
