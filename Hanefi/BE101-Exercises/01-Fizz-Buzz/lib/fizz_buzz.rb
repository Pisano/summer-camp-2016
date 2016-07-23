def fizz_buzz(number)
  # TODO: return an array of integers, 'Fizz', 'Buzz' or 'FizzBuzz'

  return false if number.class != Fixnum || number < 1

  answer = []
  (1..number).to_a.each do |num|
    if num % 15 == 0
      answer.push "FizzBuzz"
    elsif num % 5 == 0
      answer.push "Buzz"
    elsif num % 3 == 0
      answer.push "Fizz"
    else
      answer.push num
    end
  end

  answer
end
