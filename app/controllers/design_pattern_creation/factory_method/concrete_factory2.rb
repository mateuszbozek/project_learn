module DesignPatternCreation::FactoryMethod
  class ConcreteFactory2 < MyCreator
    def factory_method
      ConcreteProduct2.new
    end
  end
end
