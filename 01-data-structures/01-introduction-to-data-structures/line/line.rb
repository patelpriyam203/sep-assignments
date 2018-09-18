# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    members.push(person)
  end

  def leave(person)
    members.delete(person)
  end

  def front
    members.first
  end

  def middle
    members.slice((members.length/2).round)
  end

  def back
    members.last
  end

  def search(person)
    # if index(person)
    #   person
    # end
    members.each do |member|
      if person == member
        return member
      end
    end
    return nil
  end

  private

  def index(person)
    # members.index(person)
    count = 0;
    members.each do |member|
      if person == member
        return count
      else
        count += 1
      end
    end
  end

end
