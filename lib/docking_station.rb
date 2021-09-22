require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
   fail "There are no bikes to release!" unless @bike
    @bike 
  end

  def dock(bike)
   fail "Station full!" if @bike 
    @bike = bike
   end

end
