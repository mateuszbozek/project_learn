class AutoService
  def initialize(params)
    byebug
    @name = params[:name]
    @color = params[:color]
  end

  def call
    raise ArgumentError, "Miss name attribute" if @color.blank?
    Auto.create!(name: @name)
  end

end