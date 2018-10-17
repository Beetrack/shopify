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

  def edit; end

  def create; end

  def delete; end
end
