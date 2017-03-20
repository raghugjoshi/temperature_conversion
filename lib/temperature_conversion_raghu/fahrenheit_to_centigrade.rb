require 'object_present'

module TemperatureConversionRaghu
  class FahrenheitToCentigrade
    def initialize(fahrenheit = nil)
      @fahrenheit = fahrenheit
    end

    def convert
      begin
        ObjectPresent.new(@fahrenheit).present? do 
          ((@fahrenheit.to_f - 32.0) * (5.0 / 9.0)).round(2)
        end
      rescue Exception => e
        puts e.message
      end
    end
  end
end