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
    begin
      carrier_service = ShopifyAPI::CarrierService.create(params_carrier_service)
      logger.debug "Carrier Service Response: #{carrier_service.to_json}"
      redirect_to carrier_services_path
    rescue => e
      flash[:error] = e
      logger.error = "Carrier Service Response: #{e}"
      render :new
    end
  end

  def destroy
    begin
      response = ShopifyAPI::CarrierService.delete(params_carrier_service[:id])
      logger.debug "Carrier Service Response: #{response.to_json}"
      flash[:notice] = 'Carrier service destroyed successfully'
      redirect_to carrier_services_path
    rescue => e
      logger.error = "Carrier Service Response: #{e}"
    end
  end

  private

  def params_carrier_service
    params.permit(:id, :name, :callback_url, :service_discovery, :active)
  end
end
