require 'rails_helper'

RSpec.describe List, type: :model do
  describe "Relationships" do 
    it { should belong_to :trip }
    it { should have_many :list_items }
    it { should have_many(:items).through(:list_items) }
    it { should have_many :user_lists }
    it { should have_many(:users).through(:user_lists) }
  end

  describe "Validations" do 
    it { should validate_presence_of :category}
  end
end
