require 'test_helper'

class WorldTest < MiniTest::Unit::TestCase

  def setup
    @world = World.new
  end

  def test_world_start
    assert_equal 0, @world.time
  end

  def test_world_time_passes
    @world.time_passing
    @world.time_passing
    assert_equal 2, @world.time
  end

  def test_push_live_cell
    @cell = Cell.new(1, 2)
    @world.live_cells.push(@cell)
    assert_equal 1, @world.live_cells[0].x
  end

  def test_neighbor?
    @cell1 = Cell.new(0, 0)
    @cell2 = Cell.new(0, 1)
    @cell3 = Cell.new(4,6)
    @cell4 = Cell.new(1, 1)
    @world.live_cells.push(@cell1)
    @world.live_cells.push(@cell2)
    assert_equal true, @cell1.neighbor?(@cell2)
    assert_equal false, @cell1.neighbor?(@cell3)
    assert_equal true, @cell1.neighbor?(@cell4)
  end

  

end
