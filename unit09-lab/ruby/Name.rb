# Name.rb Holds information about the Name class
#
# Completed by: Robert Lowman
# Date: 11/10/2016
#################################################

module Names
  class Name
    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end
    attr_reader :first, :middle, :last

    def fullName()
      return first + " " + middle + " " + last
    end

    def print()
      puts( fullName )
      fullName()
    end
  end
end
