require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe "Relationships" do 
    it { should have_many :lists }
    it { should have_many :user_trips }
    it { should have_many(:users).through(:user_trips) }
  end

  describe "Validations" do 
    it { should validate_presence_of :title }
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :end_date }
  end
end
