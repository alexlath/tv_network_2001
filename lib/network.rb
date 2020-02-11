class Network
  attr_reader :name, :shows

  def initialize(name_parameter)
    @name = name_parameter
    @shows = []
  end

  def add_show(show_parameter)
    @shows << show_parameter
  end

  def main_characters
    characters = @shows.reduce([]) { |characters, show| characters << show.characters }.flatten
    characters.select { |character| character.salary > 500_000 && character.name == character.name.upcase }
  end

  def actors_by_show
    @shows.reduce({}) do |actors, show|
      actors[show] = show.characters.map { |character| character.actor }
      actors
    end
  end

end
