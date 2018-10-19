module CarrierServices
  class ChileExpress < ::CarrierServices::Service
    def execute(context)
      context.rate.to_json
    end
  end
end
