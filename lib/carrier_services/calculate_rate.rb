module CarrierServices
  class CalculateRate
    attr_accessor :data_json

    def initialize(rate)
      @rate = rate
    end

    def execute
      @service.execute(self)
    end
  end
end
