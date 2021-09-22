require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    if @bike == nil
      raise StandardError.new "There are no bikes to release!"
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end
end
