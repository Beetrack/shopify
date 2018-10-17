class CarrierServicesController < ShopifyApp::AuthenticatedController

  def index
    @carrier_services = []
    begin
      @carrier_services = ShopifyAPI::CarrierService.find(:all)
      flash[:notice] = 'Carrier Services is empty' if @carrier_services.empty?
    rescue => e
      flash[:error] = e
    end
  end

  def new; end

  def edit; end

  def create
    logger.info "Params Carrier Service: #{params_carrier_service}"
  end

  def delete; end

  private

  def params_carrier_service
    params.permit(:name, :callback_url, :service_dicovery)
  end
end
