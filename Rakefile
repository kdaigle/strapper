# encoding: utf-8

require 'rubygems'
require 'bundler'
require_relative 'lib/strapper/version'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "strapper"
  gem.homepage = "http://github.com/kdaigle/strapper"
  gem.license = "MIT"
  gem.summary = %Q{A simple tool to help you manage dependencies and other 'bootstrap' tasks for your project.}
  gem.description = %Q{Strapper is a tool to help you make sure your environment is ready to run your project. It uses things like Homebrew to install the required tools but is softer than Boxen or Vagrant to manage what you need.}
  gem.email = "kyle@digitalworkbox.com"
  gem.authors = ["Kyle Daigle"]
  gem.version = Strapper::Version::STRING
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test
