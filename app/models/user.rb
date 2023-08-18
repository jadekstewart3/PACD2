class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_validation :downcase_email

  has_many :user_trips
  has_many :trips, through: :user_trips
  has_many :user_lists
  has_many :lists, through: :user_lists

  validates :email, uniqueness: true,
                    presence: true,
                    format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :name, presence: true
  validates :password, presence: true


  private 

  def downcase_email
    self.email = email.downcase if email.present?
  end
end
