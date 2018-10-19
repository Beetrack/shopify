module CarrierServices
  class CalculateRate
    attr_accessor :rate

    def initialize(rate, service)
      @rate = rate
      @service = service
    end

    def execute
      @service.execute(self)
    end
  end
end
