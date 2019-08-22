require 'rails_helper'

RSpec.feature "Authenticates a user", type: :feature do
    scenario "User cannot visit a post page without logging in" do
      sign_up
      url = URI.parse(current_url)
      url.request_uri
      fill_in "Message", with: "test own wall post"
      click_button "Submit"
      click_link "Signout"
      visit url
      expect(page).to have_content("You need to sign in or sign up before continuing.")
    end
end