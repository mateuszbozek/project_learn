module DesignPatternCreation::FactoryMethod
  class ConcreteFactory1 < MyCreator
    def factory_method
      ConcreteProduct1.new
    end
  end
end
