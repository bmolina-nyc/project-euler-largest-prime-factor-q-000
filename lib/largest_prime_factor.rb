

def largest_prime_factor(number)

    def prime?(num)
     2.upto(num - 1).each { |el| return false if num % el == 0 }
     true 
    end


    num = 2 
    factor = 1 
    array = [] 

    while factor < number 
      if number % num == 0 && prime?(num)
        array << num 
        factor *= num
      end
      num += 1 
      break if num == number 
    end
    array.last 
end