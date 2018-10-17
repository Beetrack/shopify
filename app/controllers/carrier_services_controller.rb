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
      ShopifyAPI::CarrierService.create(params_carrier_service)
      redirect_to carrier_services_path
    rescue => e
      flash[:error] = e
      render :new
    end
  end

  def delete; end

  private

  def params_carrier_service
    params.permit(:name, :callback_url, :service_discovery)
  end
end
