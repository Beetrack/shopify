class ApplicationController < ActionController::Base
  after_action :allow_shopify_iframe
  protect_from_forgery with: :exception

  private

  def allow_shopify_iframe
    response.headers['X-Frame-Options'] = 'ALLOWALL'
  end

  def set_current_show
    @shop = ShopifyAPI::Shop.current
  end

end
