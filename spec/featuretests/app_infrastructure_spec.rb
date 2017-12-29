feature Tilegame do
  scenario 'page starts with a starting tile and introductory message' do
    visit '/home'
    find("#startingsquare").click
    expect(page).to have_content ("Welcome to tilegame, select your starting tile type")
  end
end
