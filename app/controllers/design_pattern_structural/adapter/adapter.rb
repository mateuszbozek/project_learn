module DesignPatternStructural::Adapter
  class Adapter < Target
    def initialize(adaptee)
      @adaptee = adaptee
    end

    def request
      "#{@adaptee.specific_request.reverse}"
    end
  end
end

# Przykład użycia wzorca Adapter
# project-learn(dev)> adaptee = DesignPatternStructural::Adapter::Adaptee.new
# project-learn(dev)> adaptee.specific_request
# project-learn(dev)> adapter = DesignPatternStructural::Adapter::Adapter.new(adaptee)
# project-learn(dev)> adapter.request
