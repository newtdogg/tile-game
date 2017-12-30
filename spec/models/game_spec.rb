describe Game do
  subject(:game) { described_class.new}

  it 'should start at turn 0' do
    expect(game.turn).to eq(1)
  end
end
