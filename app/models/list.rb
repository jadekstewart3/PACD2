class List < ApplicationRecord
  belongs_to :trip
  has_many :list_items
  has_many :items, through: :list_items
  has_many :user_lists
  has_many :users, through: :user_lists

  validates_presence_of :category
end
