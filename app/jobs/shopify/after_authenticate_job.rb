module Shopify
  class AfterAuthenticateJob < ActiveJob::Base
    def perform(shop_domain:)
      shop = Shop.find_by(shopify_domain: shop_domain)

      shop.with_shopify_session do
        logger.info 'TEST AFTER AUTHENTICATE JOB'
        ShopifyAPI::CarrierService.create(
          name: 'Carrier Service Test',
          callback_url: 'https://daniel-shopify-test.herokuapp.com/test',
          service_discovery: true
        )
      end
    end
  end
end
