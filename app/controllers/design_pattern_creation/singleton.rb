class DesignPatternCreation::Singleton
    
  attr_reader :value

  @instance_mutex = Mutex.new

  private_class_method :new

  def initialize(value)
    @value = value
  end

  def self.instance(value)
    return @instance if @instance

    @instance_mutex.synchronize do
      @instance ||= new(value)
    end
    
    @instance        
  end

  def some_business_logic
    p "Random function for Singleton class"
  end
end

# def test_singleton(value)
#   singleton = Singleton.instance(value)
#   puts singleton.value
# end