class CalculatorController < ApplicationController

    def prime_numbers
       result = CalculatePrimeNumebrsService.new(permit_params).call
       render json: result
    end

    def permit_params
      params.require([:first, :second])
    end
end