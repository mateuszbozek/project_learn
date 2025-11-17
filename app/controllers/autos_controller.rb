class AutosController < ApplicationController
  def self.test(value)
    (0..value).each do |number|
      if number%15 == 0
        p "#{number} podzielne przez 3 oraz 5"
      elsif number%3 == 0
        p "#{number} podzielne przez 3"
      elsif number%5 == 0
        p "#{number} podzielne przez 5"
      else
        p "#{number} nie podzielne ani przez 3 ani przez 5"
      end
    end
  end
end
