require "fizz_buzz"

describe "fizz_buzz" do
  it "returns false if argument is not an integer" do
    expect(fizz_buzz("apple")).to be false
  end

  it "returns false if argument is smaller than 1" do
    expect(fizz_buzz(0)).to be false
  end

  it "returns the array [ 1, 2, 'Fizz', 4, 'Buzz' ] for number 5" do
    expect(fizz_buzz(5)).to eq([ 1, 2, 'Fizz', 4, 'Buzz' ])
  end

  it "returns an array with 'FizzBuzz' in the 15th element of the array" do
    expect(fizz_buzz(15).last).to eq 'FizzBuzz'
  end
end
