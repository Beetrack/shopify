class RatesController < ActionController::Base

  # post /calculated_rates
  def calculate
    rate = Rate.new(params_rate)
    service = ::CarrierServices::CalculateRate.new(
      rate,
      ::CarrierServices::ChileExpress.new
    )
    response = service.execute
    render json: response
  end

  private

  def params_rate
    params.require(:rate).permit(
      :currency,
      :locale,
      destination: {},
      origin: {},
      items: []
    )
  end
end
