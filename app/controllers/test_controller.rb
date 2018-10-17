class TestController < ActionController::Base
  def test
    logger.debug "Params Test #{params.to_json}"
    render json: response_callback
  end

  private

  def response_callback
    {
      service_name: 'canadapost-overnight',
      service_code: 'ON',
      total_price: '1295',
      description: 'This is the fastest option by far',
      currency: 'CAD',
      min_delivery_date: '2013-04-12 14:48:45 -0400',
      max_delivery_date: '2013-04-12 14:48:45 -0400'
    }
  end
end
