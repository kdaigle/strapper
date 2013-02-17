module Strapper
  module Recipes
    class Homebrew < Strapper::Recipe

      register_keyword :homebrew

      def installed?
        `which brew` != ""
      end

      def run
        if installed?
          puts "Homebrew is already installed"
        else
          puts "Installing homebrew"
          `ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"`
        end
      end

    end
  end
end