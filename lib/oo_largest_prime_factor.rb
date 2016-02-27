 # Enter your object-oriented solution here!


class LargestPrimeFactor

  attr_reader :digit 
 
  def initialize(digit)
    @digit = digit
  end

  def prime?(digit)
     2.upto(digit - 1).each { |el| return false if digit % el == 0 }
     true 
  end

  def number
    num = 2
    factor = 1 
    array = [] 

    while factor < digit
      if digit % num == 0 && prime?(num)
        array << num 
        factor *= num
      end
      num += 1 
      break if num == digit
    end
    array.last 
  end



end 

