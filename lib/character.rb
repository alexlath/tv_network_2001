class Character
  attr_reader :name, :actor, :salary

def initialize(character_data_parameter)
  @name = character_data_parameter[:name]
  @actor = character_data_parameter[:actor]
  @salary = character_data_parameter[:salary]
end

end
