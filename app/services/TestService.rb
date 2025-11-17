class TestService
  # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  # Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
  # Additionally, if the number is negative, return 0.    
  # Note: If the number is a multiple of both 3 and 5, only count it once.  
  
#   def initialize(value)
#     @value = value-1
#   end

#   def call
#     array = []
#     (0..@value).each do |val|
#        array << val if val%3==0 || val%5==0
#     end
#     array.sum
#   end

#   def call
#     (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
#   end
  # -----------------------------------------------------------------------------------------------------------------------------------------
  # game Dreidel
#   def gamble(rolls, my_coins, pot)

#     # dreidel = {
#     #   Nun:   -> { nil },
#     #   Gimel: -> { my_coins += pot     ; pot = 0        },
#     #   Hei:   -> { my_coins += pot / 2 ; pot -= pot / 2 },
#     #   Shin:  -> { my_coins -= 1       ; pot += 1       }
#     # }
    
    # rolls.each { |roll| dreidel[roll.to_sym].call }
    
    # my_coins

    # in_pot = pot
    # my_coins = my_coins
    
#     rolls.each do |roll|
#       case roll
#       when 'Gimel'
#         my_coins += in_pot
#         in_pot = 0
#       when 'Shin'
#         my_coins -= 1
#         in_pot += 1
#       when 'Hei'
#         half_in_pot = in_pot/2      
#         my_coins += half_in_pot
#         in_pot = (in_pot%2==1 ? half_in_pot+1 : half_in_pot)
#       end
#     end
#     my_coins
#   end
  # -----------------------------------------------------------------------------------------------------------------------------------------

#   Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

#   def digital_root(n)
#     n>=10? digital_root(n.digits.sum) : n
#   end
  # -----------------------------------------------------------------------------------------------------------------------------------------

#   You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
  
#   def find_outlier(integers)
#     odd = []
#     even = []
#     integers.select {|i| i%2==0 ? odd << i : even << i}
    
#     odd.length==1 ? odd[0] : even[0]
  
#   end

#   def find_outlier(integers)
#     integers.partition(&:odd?).find(&:one?).first
#     # [6,3,2,4].partition(&:even?).find(&:third)
#   end

  # -----------------------------------------------------------------------------------------------------------------------------------------
  #  def initialize(num)
  #   @num = num
  #  end

  #  def call
  #   @num.digits.size.downto(1).flat_map { |i|  p @num.digits.permutation(i).map { |n| n.join.to_i}  }.uniq.sum
  # end


#  def call
#   word = "CodeWarrior"
#   dup = []
#   not_dup = []
  
#   word.downcase.each_char do |c|
#     c.in?(not_dup) ? dup << c : not_dup << c
#   end

#   dup = dup.uniq
#   not_dup = not_dup.uniq - dup.uniq

#   new_string = []
#   word.downcase.each_char do |c| 
#     c.in?(not_dup)? new_string<<"(" : new_string<<")"
#   end

#   new_string.join

#   # or

#   word
#     .downcase
#     .chars
#     .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
#     .join
# end
#   # ---- TIPS ======
#  [1,2,3].include?(2)  -> better 2.in?([1,2,3])
# (1..10).cover?(3) -> 3.in>(1..10)

  def initialize(start, n, k) # wynik dla  420 (n=4, k=30) -> [12, [13139, 6725, 4338, 4514, 1138, 4179, 9219], 7, 1138]
    @start = start
    @n = n # wykładnik
    @k = k # ilość kroków
  end

def call
  array = []
  step = 0
  flag = 0
  while (step < @k && flag == 0)
    @start = @start.digits.map { |value| value.pow(@n) }.sum
    p @start
    flag = array.find_index(@start) if array.include?(@start)
    p "----- #{array.find_index(@start)}"
    array << @start
    step += 1
  end
  p array
  p step
  dup_array = array[flag...step-1]

  final_array = []
  final_array << flag+1 << dup_array << dup_array.length << dup_array[((@k-1-flag)%dup_array.length)]
end
end