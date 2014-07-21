require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  # def setup
  #   # This is ran before all the tests. Useful
  #   # when preparing input data for the objects/methods you
  #   # wish to test.
  #   @cell = Cell.new(0,0)
  # end

  def test_cell_creation
    @cell = Cell.new(1,1, true)
    assert_respond_to @cell, :x
    assert_respond_to @cell, :y
    assert_equal(1, @cell.x)
    assert_equal(1, @cell.y)
  end

  def test_are_neighbors
    @cell1 = Cell.new(0,0)
    @cell2 = Cell.new(0,2)

    assert_equal(false, @cell1.neighbor?(@cell2))
  end

  def test_dem_toggles
    @world = World.new(3)
    @world.toggle_cells(1,4,7)
    assert_equal(true, @world.cells[1].alive)
    assert_equal(true, @world.cells[4].alive)
    assert_equal(true, @world.cells[7].alive)
  end

end
