class CalculatePrimeNumebrsService
  def initialize(params)
    @first_num = params[0].to_i
    @second_num = params[1].to_i
    @count_numberts = 0
    @array_of_numbers = []
  end

  def call
    (@first_num..@second_num).to_a.each { |num| is_prime(num) } if (@first_num >= 2 && @second_num > @first_num)
    [@count_numberts, @array_of_numbers]
  end

  def is_prime(num)
     if (2...num).none? { |divider| num%divider == 0 }
       @count_numberts = @count_numberts + 1
       @array_of_numbers << num
     end
  end

end