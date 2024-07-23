require_relative 'product'

RSpec.describe Product do
  before(:all) do
    @product1 = Product.new({id: 1, name: 'Product 1', quantity: 5, price: 100})
  end

  it "responds to id" do
    expect(@product1).to respond_to(:id)
  end

  it "responds to name" do
    expect(@product1).to respond_to(:name)
  end

  it "responds to quantity" do
    expect(@product1).to respond_to(:quantity)
  end

  it "responds to price" do
    expect(@product1).to respond_to(:price)
  end

  it "returns correct attributes" do
    expect(@product1.id).to eq(1)
    expect(@product1.name).to eq('Product 1')
    expect(@product1.quantity).to eq(5)
    expect(@product1.price).to eq(100)
  end

  it "returns all products" do
    expect(Product.get_all).to eq([@product1])
  end

  it "returns list of product names" do
    expect(Product.get_all_names).to eq(['Product 1'])
  end

  it "returns the list of sold out products" do
    product2 = Product.new({id: 2, name: 'Product 2', quantity: 0, price: 200})
    expect(Product.products_sold_out).to eq([product2])
  end

  it "returns the total inventory value" do
    Product.class_variable_set(:@@products, [])
    product3 = Product.new({id: 3, name: 'Product 3', quantity: 3, price: 300}) # 900
    product4 = Product.new({id: 4, name: 'Product 4', quantity: 1, price: 400}) # 400
    expect(Product.total_inventory_value).to eq(1300)
  end
end