require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  def test_create_cell
    @cell = Cell.new(1, 2)
    assert_instance_of(Cell, @cell)
    assert_equal(1, @cell.x)
    assert_equal(2, @cell.y)

  end


end
