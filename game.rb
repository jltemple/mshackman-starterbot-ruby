#!/usr/bin/env ruby

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

  def self.update_settings(setting, value)
    case setting
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
  end

  def self.run
    not_finished=true

    while not_finished
      line = gets.chomp
      tokens = line.split()

      key0 = tokens[0]
      case key0
        when "settings"
          self.update_settings(tokens[1],tokens[2])
        when "update"

        when "action"

        when "quit"
          not_finished=false
        else puts "Invalid command"
      end
    end
  end # End of run

end
