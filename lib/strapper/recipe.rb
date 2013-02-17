module Strapper
  class Recipe

    def self.register_keyword(keyword)
      Strapper::Registry.add({ keyword => self })
    end

    def initialize(*args)
      @args = args
    end

    def installed?
      false
    end

  end
end