class Field
  S_EMPTY, S_BLOCKED, S_PLAYER, S_BUG_SPAWN, S_GATE, S_BUG, S_MINE, S_CODE = ['.', 'x', 'P', 'S', 'G', 'E', 'B', 'C']

  def initialize(width, height)
    @width = width
    @height = height
    @cells = self.initialize_field(@width, @height)

    @myPosition = nil
    @opponentPosition = nil
    @enemyPositions = Array.new
    @snippetPositions = Array.new
    @bombPositions = Array.new
    @tickingBombPositions = Array.new
  end

  def initialize_field(width, height)
    Array.new(width){Array.new(height)}
  end

  def clearField
    @cells.each do |column| 
    	column.each do |cell|
    		cell = nil
    	end
    end

    @myPosition = nil
    @opponentPosition = nil
    @enemyPositions.clear()
    @snippetPositions.clear()
    @bombPositions.clear()
    @tickingBombPositions.clear()
	end

	def parseFromString(input)
    self.clearField()

    cells = input.split(",")
    x = 0
    y = 0

    cells.each do |cellString| 
      @cells[x][y] = cellString
      puts cellString
      puts x
      puts y

      x += 1
      if x == @width
        x = 0
        y += 1
      end
    end # End looping through cellString
  end

end

