require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bike = []
  end

  def release_bike
   fail "There are no bikes to release!" unless @bike.length > 0
    @bike[0]
    @bike.delete_at(0)
  end

  def dock(bike)
   fail "Station full!" if @bike.length == 20 
    @bike << bike
    bike
   end

end
