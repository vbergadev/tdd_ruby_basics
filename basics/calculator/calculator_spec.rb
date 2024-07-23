require_relative 'calculator'

RSpec.describe Calculator do
  before do
    @first_number = 5
    @second_number = 10
  end
  context "addition" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(@first_number, @second_number)).to eq(15)
    end
  end
  context "subtraction" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(@second_number, @first_number)).to eq(5)
    end
  end
  context "multiplication" do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(@first_number, @second_number)).to eq(50)
    end
  end
  context "division" do
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(@second_number, @first_number)).to eq(2)
    end
  end
end