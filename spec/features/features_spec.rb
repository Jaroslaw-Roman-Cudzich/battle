# write a feature test that checks that the homepage says Testing infrastructure working!.

feature "Testing infrastructure working" do
    scenario "Checks that homepage says Testing infrastructure working" do
    visit '/'
    expect(page).to have_content "Testing infrastructure working"
  end
end
  