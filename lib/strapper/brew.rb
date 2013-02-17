module Strapper

  class Brew
    attr_reader :name

    def initialize(name, version=nil)
      @name = name
      @version = version
    end

    def run
      if installed?
        puts "Using #{name} (#{installed_version})"
      else
        puts "Installing #{name} (#{formula_version})"
        install
      end
    end

    def install
      brewable = `brew info #{@name}`
      if brewable[0..4] != 'Error'
        system "brew install #{@name}"
      else
        puts "Error: No available formula for #{@name}"
      end
    end

    def installed?
      installed_version = `brew list --versions #{@name}`.chomp
      !installed_version.empty?
    end

    def installed_version
      installed_version = `brew list --versions #{@name}`.chomp
      installed_version.match(/#{@name} ([^\s]+)/)[1]
    end

    def formula_version
      formula_version = `brew info #{@name}`
      puts formula_version
      formula_version.split($/).first.match(/#{@name}: stable ([^\s,]+)/)[1]
    end

  end

end