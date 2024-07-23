require_relative 'hello'
RSpec.describe Hello do
  it "should return 'Hello World!'" do
    hello_output = Hello.new.say_hello
    expect(hello_output).to eq("Hello World!")
  end
end