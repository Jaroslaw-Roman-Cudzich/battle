# write a feature test that checks that the homepage says Testing infrastructure working!.

# feature "Testing infrastructure working" do
#   scenario "Checks that homepage says Testing infrastructure working" do
#     visit '/'
#     expect(page).to have_content "Testing infrastructure working"
#   end
# end

feature "Play a personalised game of Battle" do
  scenario "Start a fight by entering names and see them on screen" do
    visit '/'
    fill_in :player1, with: 'Jaroslaw'
    fill_in :player2, with: 'Ben'
    click_button 'Submit'
    expect(page).to have_content 'Jaroslaw vs. Ben'
  end
end
  