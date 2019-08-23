RSpec.feature "User can search", type: :feature do
  scenario "Can search by email other users" do
    sign_up #as zizi
    click_link 'Signout'
    sign_up_second_user #test
    fill_in "search", with: 'zizidwengy@email.com'
    click_button "Search"
    expect(page).to have_content("Post to zizidwengy@email.com's wall")
  end
end

RSpec.feature "User can search", type: :feature do
  scenario "will return error if invalid" do
    sign_up #as zizi
    click_link 'Signout'
    sign_up_second_user #test
    fill_in "search", with: 'asdasd'
    click_button "Search"
    expect(page).to have_content("Sorry")
  end
end
