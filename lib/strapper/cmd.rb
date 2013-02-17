module Strapper
  class Cmd

    def initialize(cmd_to_run)
      @cmd_to_run = cmd_to_run
    end

    def run
      puts "Running \"#{@cmd_to_run}\""
      `#{@cmd_to_run}`
    end

  end
end