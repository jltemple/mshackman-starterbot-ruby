class Game

  def initialize
    @initial_timebank = 0
    @time_per_move = 10
    @player_names = []
    @my_bot = "not set"
    @my_botid = -1
    @field_width = 0
    @field_height = 0
    @max_rounds = 0

    @field = nil
    @round = 0
    @last_update = 0
    @last_timebank = 0
  end

  def setting(command, value)
    case command
    when "timebank"
      @timebank = value.to_i
    when "time_per_move"
      @time_per_move = value.to_i
    when "player_names"
      @player_names = value.split(',')
    when "your_bot"
      @my_bot = value
    when "your_botid"
      @my_botid = value.to_i
    when "field_width"
      @field_width = value.to_i
    when "field_height"
      @field_height = value.to_i
    when "max_rounds"
      @max_rounds = value.to_i
    end # Ending setting the setting

    puts "Setting #{command} to #{value}"
  end

  def update(target, command, value)
    case target
    when "game"
      case command
      when "round"
        # TODO: update the round
      when "field"
        # TODO: Update the field
      end
    # TODO: when command is a player nmae 
    end  
  end

  def action(command, value)
    case command
    when "character"
      # TODO: Get the character
    when "move"
      # TODO: Move the bot
    end
  end

  def run
    not_finished=true

    while not_finished
      line = gets.chomp
      command_parts = line.split()

      key0 = command_parts[0]
      case key0
      when "settings"
        self.update_settings(command_parts[1],command_parts[2])
      when "update"

      when "action"
        do_action(command_parts[1],command_parts[2])
      when "quit"
        not_finished=false
      else 
        puts "Invalid command"
      end
    end
  end # End of run

end
