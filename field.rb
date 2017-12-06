class Field
  S_EMPTY, S_BLOCKED, S_PLAYER, S_BUG_SPAWN, S_GATE, S_BUG, S_BOMB, S_CODE = ['.', 'x', 'P', 'S', 'G', 'E', 'B', 'C']

  def initialize(width, height)
    @width = width
    @height = height
    @cells = self.initialize_field(@width, @height)

    @positions = {
      me: nil,
      opponent: nil,
      enemies: Array.new,
      snippets: Array.new,
      bombs: Array.new,
      ticking_bombs: Array.new
    }
  end

  def initialize_field(width, height)
    Array.new(width){Array.new(height)}
  end

  def clearFieldCells
    @cells.each do |column| 
      column.each do |cell|
        cell = nil
      end
    end
  end

  def clearPositions
    @positions = {
      me: nil,
      opponent: nil,
      enemies: Array.new,
      snippets: Array.new,
      bombs: Array.new,
      ticking_bombs: Array.new
    }
  end

  def clearField
    self.clearFieldCells()
    self.clearPositions()    
	end

	def parseFromString(input)
    cells = input.split(",")
    x = 0
    y = 0

    cells.each do |cellString| 
      @cells[x][y] = cellString

      x += 1
      if x == @width
        x = 0
        y += 1
      end
    end # End looping through cellString
  end

end

