class Show
attr_reader :name, :creator, :characters

  def initialize(name_parameter, creator_parameter, actors_parameter)
    @name = name_parameter
    @creator = creator_parameter
    @characters = actors_parameter
  end
end
