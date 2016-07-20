def fizz_buzz(number)
  # TODO: return an array of integers, 'Fizz', 'Buzz' or 'FizzBuzz'
  number = number.to_i
  if number > 0
    number_array = []
    number_array = (1..number).to_a
    result = []
    number_array.each do |item|
      if item % 3 == 0 && item % 5 == 0
        result.push("FizzBuzz")
      elsif item % 3 == 0
        result.push("Fizz")
      elsif item % 5 == 0
        result.push("Buzz")
      else
        result.push(item)
      end
    end
    return result
  else
    return false
  end
end
