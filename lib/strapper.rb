require "strapper/version"
require "strapper/brew"
require "strapper/cmd"

require "strapper/parser"

require "strapper/registry"
require "strapper/recipe"

Dir["#{File.dirname(__FILE__)}/strapper/recipes/*.rb"].each {|recipe| require recipe}
