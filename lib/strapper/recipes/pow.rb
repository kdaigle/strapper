module Strapper
  module Recipes
    class Pow < Strapper::Recipe

      register_keyword :pow

      def installed?
        File.directory?(File.expand_path("~/Library/Application\ Support/Pow"))
      end

      def run
        if installed?
          puts "Pow is already installed"
        else
          puts "Installing pow"
          `curl get.pow.cx | sh`
        end
      end

    end
  end
end