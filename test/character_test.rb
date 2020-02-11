require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_can_exist
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, kitt
  end

end
