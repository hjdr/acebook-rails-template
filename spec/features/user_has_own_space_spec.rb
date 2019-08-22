RSpec.feature "Own Wall", type: :feature do
  scenario "logged in user can see posts on their own wall" do
    sign_up
    url = URI.parse(current_url)
    url.request_uri
    fill_in "Message", with: "test own wall post"
    click_button "Submit"
    click_link "Signout"
    sign_up_second_user
    visit url
    expect(page).to have_content("test own wall post")
  end
  scenario "cannot edit post if the user did not make it" do
    sign_up
    url = URI.parse(current_url)
    url.request_uri
    fill_in "Message", with: "test own wall post"
    click_button "Submit"
    click_link "Signout"
    sign_up_second_user
    visit url
    expect(page).not_to have_content('Edit Post')
  end
  scenario 'users can only view posts on walls' do
  sign_up
  expect(page).not_to have_content('Posts')
  end
end
