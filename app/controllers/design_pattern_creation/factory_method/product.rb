module DesignPatternCreation::FactoryMethod
  class Product
    def operation
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
