class Cell

  attr_accessor :x, :y

  def initialize (x, y)
    @x = x
    @y = y
  end

  def neighbor? (cell)
    a = (self.x - cell.x).abs
    b = (self.y -  cell.y).abs
    a = a ** 2
    b = b ** 2
    result = (a + b) ** 0.5
    result.floor == 1
  end


end
