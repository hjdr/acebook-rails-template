RSpec.feature "Cannot access", type: :feature do
  scenario "if not logged in" do
    visit ("/")
    expect(page).to have_content("You need to sign in or sign up before continuing")
  end
end
