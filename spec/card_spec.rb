require "./lib/card.rb"

describe Card do
  let(:card) { described_class.new }

  it 'has an amount object that is a float' do
    expect(card.amount).to eq 0.0
  end

  it 'allows card to be loaded with money' do
    card.load(30)
    expect(card.amount).to eq 30.0
  end

  it 'allows card with sufficient balance to have money removed' do
    card.load(30)
    card.unload(10)
    expect(card.amount).to eq 20.0
  end

  it 'prevents a card with insufficient balance from having excess money removed' do
    card.load(10)
    expect(card.unload(20)).to eq 'Insufficient funds'
    expect(card.amount).to eq 10.0
  end

  it 'allows the card to be loaded multiple times' do
    card.load(10)
    card.load(20)
    expect(card.amount).to eq 30.0
  end
end
