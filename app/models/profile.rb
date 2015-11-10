class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true
  # validates :given_name, presence: true
  # validates :surname, presence: true
end
