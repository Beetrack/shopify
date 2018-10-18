class Rate
  include ActiveModel::Model
  attr_accessor :origin,
                :destination,
                :items,
                :currency,
                :locale

  def initialize(attributes = {})
    super
    @origin = Address.new(origin)
    @destination = Address.new(destination)
    initialize_items
  end

  private

  def initialize_items
    return if items.nil?
    @items = []
    items.each do |item|
      @items.push(Item.new(item))
    end
  end
end
