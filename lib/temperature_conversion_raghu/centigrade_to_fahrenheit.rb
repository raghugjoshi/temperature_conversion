require 'object_present'

module TemperatureConversionRaghu
  class CentigradeToFahrenheit
    def initialize(centigrade = nil)
      @centigrade = centigrade
    end

    def convert
      begin
        ObjectPresent.new(@centigrade).present? do 
          (@centigrade.to_f * (9.0 / 5.0) + 32.0).round(2)
        end
      rescue Exception => e
        puts e.message
      end
    end
  end
end