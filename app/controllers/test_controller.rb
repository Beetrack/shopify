class TestController < ActionController::Base
  def test
    logger.debug "Params Test #{params.to_json}"
  end
end
