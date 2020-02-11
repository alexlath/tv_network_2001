require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test

  def test_it_can_exist
    nbc = Network.new("NBC")

    assert_instance_of Network, network
  end
end
