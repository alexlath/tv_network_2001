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
    @shows.reduce({}) do |actors_by_show, show|
      actors_by_show[show] = show.actors
      actors_by_show
    end
  end

  def shows_by_actor
    #something wrong with grouping here?
    @shows.reduce({}) do |shows_by_actor, show|
      show.actors.each do |actor|
        shows_by_actor[actor] = show
      end
      shows_by_actor
    end
  end

end
