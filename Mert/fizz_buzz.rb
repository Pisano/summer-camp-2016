def fizz_buzz(number)
  if number.kind_of? Integer
    if number>0
      the_array = (1..number).to_a
      p the_array

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
      p the_array

      return the_array
    else return false
    end
  else return false
  end
  # TODO: return an array of integers, 'Fizz', 'Buzz' or 'FizzBuzz'


end

#fizz_buzz(50)
