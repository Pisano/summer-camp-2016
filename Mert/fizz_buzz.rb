def fizz_buzz(number)
  if (number.kind_of? Integer) && number>0
      the_array = (1..number).to_a

      the_array.map! do |n|
        if n%15==0
          n = "FizzBuzz"
        elsif n%3==0
          n = "Fizz"
        elsif n%5==0
          n= "Buzz"
        else
          n=n
        end
      end

      return the_array

  else return false
  end
  # TODO: return an array of integers, 'Fizz', 'Buzz' or 'FizzBuzz'
end
