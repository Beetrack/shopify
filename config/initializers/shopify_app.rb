ShopifyApp.configure do |config|
  config.application_name = 'Beetrack Shopify'
  config.api_key = app_secrets('shopify_api_key')
  config.secret = app_secrets('shopify_api_secret')
  config.scope = 'read_orders, read_products, write_shipping, read_shipping'
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  config.after_authenticate_job = { job: Shopify::AfterAuthenticateJob, inline: false }
end
