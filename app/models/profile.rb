class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true
  # has_many :bikes, through: :users
  # validates :given_name, presence: true
  # validates :surname, presence: true
end
