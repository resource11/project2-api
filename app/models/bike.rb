class Bike < ActiveRecord::Base
  belongs_to :user

  has_many :favorites
  has_many :users, through: :favorites
  # belongs_to :user
  validates :title, presence: true
end
