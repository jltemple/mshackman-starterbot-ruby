require './player'
require './field'

class Game

  def initialize(character)
    @settings = {
      initial_timebank: 0,
      time_per_move: 10,
      player_names: [],
      my_bot: nil,
      my_botid: -1,
      field_width: 0,
      field_height: 0,
      max_rounds: 0,
      character: character
    }

    @field = nil
    @round = 0
    @last_update = 0
    @last_timebank = 0

    @players = [Player.new, Player.new]
  end

  def set_settings(command, value)
    case command
    when "player_names"
      @player_names = value.split(',')
    when "timebank", "time_per_move", "your_bot", "your_botid", "field_width", "field_height", "max_rounds"
      @settings[command.to_sym] = value.to_i
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
        if @field.nil?
          @field = Field.new(@settings[:field_width], @settings[:field_height])
        end
        @field.parseFromString(value)
      end
    # TODO: when command is a player nmae 
    end  
  end

  def action(command, value)
    case command
    when "character"
      puts @settings[:character]
    when "move"
      # TODO: Move the bot
    end
  end

  def run
    not_finished=true

    while not_finished

      line = gets
      if line != nil
        line.chomp!
      else
        break
      end

      command_parts = line.split()

      key = command_parts[0]
      case key
      when "settings"
        self.set_settings(command_parts[1],command_parts[2])
      when "update"
        self.update(command_parts[1],command_parts[2], command_parts[3])
      when "action"
        self.action(command_parts[1],command_parts[2])
      when "quit"
        not_finished=false
      else 
        puts "Invalid command"
      end
    end
  end # End of run

end
