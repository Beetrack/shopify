module CarrierServices
  class CalculateRate
    attr_accessor :data_json

    def initialize(data_json, service)
      @service = service
      @data_json = data_json
    end

    def execute
      @service.execute(self)
    end
  end
end
