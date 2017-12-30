feature Tilegame do
  scenario 'page starts with a starting tile and introductory message' do
    visit '/home'
    expect(page).to have_content ("Welcome to tilegame, select your starting tile type")
  end

  scenario 'the game starts on turn 1' do
    visit '/home'
    expect(page).to have_content ("Turn: 1")
  end
end
