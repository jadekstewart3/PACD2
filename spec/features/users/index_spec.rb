require "rails_helper"

RSpec.describe "User Index" do 
  it "shows some text", js: true do
    visit users_path
    save_and_open_page
    expect(page).to have_content("Hi, i'm paul")
  end
end