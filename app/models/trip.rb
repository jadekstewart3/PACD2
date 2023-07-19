class Trip < ApplicationRecord
  has_many :lists
  has_many :user_trips
  has_many :users, through: :user_trips

  validates_presence_of :title
  validates_presence_of :start_date
  validates_presence_of :end_date
end
