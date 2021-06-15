class Journey
  attr_accessor :charge
  attr_reader :one
  attr_reader :two
  attr_reader :three
  attr_accessor :start_zone
  attr_accessor :end_zone

  def initialize
    @charge = 0.0
    @one = ['Holborn', "Earl's Court"]
    @two = ["Earl's Court", 'Hammersmith']
    @three = ['Chelsea']
    @start_zone = 0
    @end_zone = 0
  end

  def swipe_in(start_location)
    @start_zone = first_zone(start_location)
  end

  def swipe_out(end_location)
    @end_zone = last_zone(end_location)
  end
end
