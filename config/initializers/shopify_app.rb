ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "96c8a662f3fbd53637e965d748d5c412"
  config.secret = "07ea40824e5cf24e82aa6db4a857ef7e"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
