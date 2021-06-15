require './lib/rail.rb'

describe Rail do
  let(:rail) { described_class.new }
  let(:card) { Card.new }

  it 'allows the maximum charge to be removed from the card total' do
    card.load(30)
    rail.charge = rail.max_charge
    card.unload(rail.charge)
    expect(card.amount).to eq 26.8
  end

  it 'allows the maximum charge to be refunded to the card total' do
    card.load(30)
    rail.max_charge
    card.unload(rail.charge)
    card.load(rail.charge)
    expect(card.amount).to eq 30
  end

  it 'allows user to travel from Holborn to Hammersmith' do
    card.load(30)
    rail.swipe_in('Holborn')
    card.unload(rail.max_charge)
    expect(card.amount).to eq 26.8
    rail.swipe_out("Earl's Court")
    card.load(rail.max_charge)
    expect(card.amount).to eq 30
    card.unload(rail.calculate_charge)
    expect(card.amount).to eq 27
  end

  it "allows user to travel from Holborn to Earl's Court" do
    card.load(30)
    rail.swipe_in("Earl's Court")
    card.unload(rail.max_charge)
    expect(card.amount).to eq 26.8
    rail.swipe_out('Hammersmith')
    card.load(rail.max_charge)
    expect(card.amount).to eq 30
    card.unload(rail.calculate_charge)
    expect(card.amount).to eq 28
  end
end
