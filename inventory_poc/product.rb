class Product
  attr_reader :id, :name, :quantity, :price
  @@products = []
  def initialize(params)
    @id = params[:id] || 0
    @name = params[:name] || 'empty data'
    @quantity = params[:quantity] || 0
    @price = params[:price] || 0
    @@products << self
  end

  def self.get_all
    @@products
  end

  def self.get_all_names
    @@products.map(&:name)
  end

  def self.products_sold_out
    @@products.select { |product| product.quantity == 0 }
  end

  def self.total_inventory_value
    @@products.reduce(0) { |sum, product| sum + product.price * product.quantity }
  end
end