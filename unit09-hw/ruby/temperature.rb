# Temperature.rb Holds information about the
#     Temperature class
#
# Completed by: Robert Lowman
# Date: 11/10/2016
#################################################

module Temperatures
  class Temperature
    def initialize(scale, degrees)
      @scale, @degrees = scale, degrees
    end
    attr_reader :scale, :degrees

    def getFahrenheit(theTemp)
      scale = theTemp.scale
      case scale
      when 'F', 'f'
        return theTemp
      when 'C', 'c'
        return Temperatures::Temperature.new('F', convertCtoF(theTemp.degrees))
      when 'K', 'k'
        return Temperatures::Temperature.new('F', convertKtoF(theTemp.degrees))
      else
        return nil
    end

    def getCelsius(theTemp)
      scale = theTemp.scale
      case scale
      when 'F', 'f'
        return Temperatures::Temperature.new('C', convertFtoC(theTemp.degrees))
      when 'C', 'c'
        return theTemp
      when 'K', 'k'
        return Temperatures::Temperature.new('C', convertKtoC(theTemp.degrees))
      else
        return nil
    end

    def getKelvin(theTemp)
      scale = theTemp.scale
      case scale
      when 'F', 'f'
        return Temperatures::Temperature.new('K', convertFtoK(theTemp.degrees))
      when 'C', 'c'
        return Temperatures::Temperature.new('K', convertCtoK(theTemp.degrees))
      when 'K', 'k'
        return theTemp
      else
        return nil
    end

    def print()
      puts( fullName )
      fullName()
    end

    def
  end
end
