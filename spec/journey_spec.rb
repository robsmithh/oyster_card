require './lib/journey.rb'
require './lib/card.rb'
require './lib/bus.rb'
require './lib/rail.rb'

describe Journey do
  let(:journey) { described_class.new }
  let(:card) { Card.new }
  let(:bus) { Bus.new }
  let(:rail) { Rail.new }

  it 'has an attribute called charge' do
    expect(journey.charge).to eq 0.0
  end

  it 'has an attribute called start_zone' do
    expect(journey.start_zone).to eq 0
  end

  it 'has an attribute called end_zone' do
    expect(journey.end_zone).to eq 0
  end

  it 'has an array for each zone' do
    expect(rail.one). to eq ['Holborn', "Earl's Court"]
    expect(rail.two). to eq ["Earl's Court", 'Hammersmith']
    expect(rail.three). to eq ['Chelsea']
  end
end
