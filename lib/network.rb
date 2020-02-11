class Network
  attr_reader :name, :shows

  def initialize(name_parameter)
    @name = name_parameter
    @shows = []
  end

  def add_show(show_parameter)
    @shows << show_parameter
  end

end
