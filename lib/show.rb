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

  def highest_paid_actor
    highest_paid_character = @characters.max_by { |character| character.salary }
    highest_paid_character.actor
  end

  def actors
    @characters.reduce([]) { |actors, character| actors << character.actor }
  end
end
