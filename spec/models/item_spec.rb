require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "Relationships" do 
    it { should have_many :list_items }
    it { should have_many(:lists).through(:list_items) }
  end

  describe "Validations" do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :quantity }
  end
end
