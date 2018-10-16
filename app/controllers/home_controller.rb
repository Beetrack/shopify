class HomeController < ShopifyApp::AuthenticatedController
  def index
    @shop = ShopifyAPI::Shop.current
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    begin
      @carrier_services = ShopifyAPI::CarrierService.find(:all)
    rescue => e
      logger.error e
    end
  end
end
