class Show
attr_reader :name, :creator, :characters

  def initialize(name_parameter, creator_parameter, characters_parameter)
    @name = name_parameter
    @creator = creator_parameter
    @characters = characters_parameter
  end

  def total_salary
    @characters.reduce(0) { |salaries, character| salaries + character.salary }
  end
end
