require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Relationships" do 
    it { should have_many(:user_trips) }
    it { should have_many(:trips).through(:user_trips) }
    it { should have_many(:user_lists) }
    it { should have_many(:lists).through(:user_lists) }
  end
  
  describe "Validations" do 
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
  end

end
