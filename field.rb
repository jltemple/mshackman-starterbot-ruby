class Field
  S_EMPTY, S_BLOCKED, S_PLAYER, S_BUG_SPAWN, S_GATE, S_BUG, S_MINE, S_CODE = ['.', 'x', 'P', 'S', 'G', 'E', 'B', 'C']

  def initialize(width, height)
    @width = width
    @height = height
    @cells = self.initialize_field(@width, @height)

    @myPosition = nil
    @opponentPosition = nil
    @enemyPositions = nil
    @snippetPositions = nil
    @bombPositions = nil
    @tickingBombPositions = nil
  end

  def initialize_field(width, height)
    Array.new(height){Array.new(width)}
  end

  def clearField
    @cells.each do |column| 
    	column.each do |cell|
    		cell = nil
    	end
    end

    @myPosition = nil
    @opponentPosition = nil
    @enemyPositions = nil
    @snippetPositions = nil
    @bombPositions = nil
    @tickingBombPositions = nil
	end
end

