class Board
  S_EMPTY, S_BLOCKED, S_PLAYER, S_BUG_SPAWN, S_GATE, S_BUG, S_MINE, S_CODE = ['.', 'x', 'P', 'S', 'G', 'E', 'B', 'C']

  def initialize(width, height)
    @width = width
    @height = height
    @cell = self.initialize_board(@width, @height)
  end

  def initialize_board(width, height)
    Array.new(height){Array.new(width)}
  end
end
