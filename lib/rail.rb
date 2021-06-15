require 'journey.rb'

class Rail < Journey

  def max_charge
    @charge = 3.2
  end

  def first_zone(start_location)
    if @three.include?(start_location)
      @start_zone = 3
    elsif @two.include?(start_location)
     @start_zone = 2
    elsif @one.include?(start_location)
      @start_zone = 1
    else
      raise "Station not found"
    end
  end

  def last_zone(end_location)
    r = Rail.new
    if @three.include?(end_location)
      @end_zone = 3
    elsif @two.include?(end_location)
      @end_zone = 2
    elsif @one.include?(end_location)
      @end_zone = 1
    else
      raise "Station not found"
    end
  end

  def calculate_charge
    if @start_zone == 1 && @end_zone == 1
      @charge = 2.5
    elsif @start_zone > 1 && @start_zone == @end_zone
      @charge = 2.0
    elsif @start_zone >= 1 && @start_zone != @end_zone
      @charge = 3.0
    elsif @start_zone > 1 && @end_zone > 1 && @start_zone != @end_zone
      @charge = 2.25
    elsif [@start_zone, @end_zone].max - [@start_zone, @end_zone].min == 2
      @charge = 3.2
    end
  end

end
