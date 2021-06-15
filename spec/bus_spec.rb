require './lib/bus.rb'

describe Bus do
  let(:bus) { described_class.new }
  let(:card) { Card.new }

  it 'ensures bus journeys have a single price' do
    card.load(30)
    bus.standard_charge
    card.unload(bus.charge)
    expect(card.amount).to eq 28.2
  end

  it 'charges a user twice if they try to swipe out' do
    card.load(30)
    bus.standard_charge
    card.unload(bus.charge)
    expect(card.amount).to eq 28.2
    card.unload(bus.charge)
    expect(card.amount).to eq 26.4
  end
end
