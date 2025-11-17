module DesignPatternCreation::FactoryMethod
  class MyCreator
    def factory_method
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def creator_operation
      product = factory_method
      " Operacja możliwa wraz z obiektem #{product.operation} "
    end
  end
end
