class CarrierServicesController < ApplicationController

  def index
    @carrier_services = []
    begin
      @carrier_services = ShopifyAPI::CarrierService.find(:all)
    rescue => e
      @errors = e
    end
  end

  def edit; end

  def create; end

  def delete; end
end
