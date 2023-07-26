require "rails_helper"

RSpec.describe "User Index", driver: :selenium_chrome, js: true do 
  it "shows some text" do
    visit users_path
    Capybara.using_wait_time(10) do
      expect(page).to have_content("Hi, i'm paul")
    end
  end
end
