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

    def getFahrenheit()
      case @scale
      when 'F', 'f'
        return theTemp
      when 'C', 'c'
        return Temperatures::Temperature.new('F', convertCtoF(@degrees))
      when 'K', 'k'
        return Temperatures::Temperature.new('F', convertKtoF(@degrees))
      else
        return nil
    end

    def getCelsius()
      case @scale
      when 'F', 'f'
        return Temperatures::Temperature.new('C', convertFtoC(@degrees))
      when 'C', 'c'
        return theTemp
      when 'K', 'k'
        return Temperatures::Temperature.new('C', convertKtoC(@degrees))
      else
        return nil
    end

    def getKelvin()
      case @scale
      when 'F', 'f'
        return Temperatures::Temperature.new('K', convertFtoK(@degrees))
      when 'C', 'c'
        return Temperatures::Temperature.new('K', convertCtoK(@degrees))
      when 'K', 'k'
        return theTemp
      else
        return nil
    end

    def raise(amount)
      @degrees = @degrees + amount
    end

    def lower(amount)
      @degrees = @degrees - amount
    end

    def equals(theTemp)
      original = self.getFahrenheit()
      compare = theTemp.getFahrenheit()
      if original.degrees == compare.degrees then
        return true
      else
        return false
      end
    end

    def lessThan(theTemp)
      original = self.getFahrenheit()
      compare = theTemp.getFahrenheit()
      if original.degrees < compare.degrees then
        return true
      else
        return false
      end
    end

    def convertFtoC(deg)
      return (deg - 32.0) * (5.0/9.0)
    end

    def convertFtoK(deg)
      return convertFtoC(deg) + 273.15
    end

    def convertCtoF(deg)
      return (deg * (9.0/5.0)) + 32.0
    end

    def convertCtoK(deg)
      return deg + 273.15
    end

    def convertKtoF(deg)
      return (convertKtoC(deg) * (9.0/5.0)) + 32.0
    end

    def convertKtoC(deg)
      return deg - 273.15
    end
  end
end
