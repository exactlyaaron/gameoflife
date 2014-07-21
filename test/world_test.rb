require 'test_helper'

class WorldTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
    @world = World.new(3)
  end

  def test_world_start
    assert_equal(0, @world.time)
  end

  def test_world_time_passes
    assert_equal(0, @world.time)
    @world.tick
    assert_equal(1, @world.time)
  end

  def test_world_array_build
    assert_equal(9, @world.cells.length)
  end

  


end
