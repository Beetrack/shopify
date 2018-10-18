class Item
  include ActiveModel::Model
  attr_accessor :name,
                :sku,
                :quantity,
                :grams,
                :price,
                :vendor,
                :requires_shipping,
                :taxable,
                :fulfillment_service,
                :properties,
                :product_id,
                :variant_id
end
