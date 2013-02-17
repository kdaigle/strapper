# Strapper

The intention of Strapper is to have a "Gemfile" style way to setup the dependencies to run a project. This is inherently soft compared to Boxen or Vagrant but is intended to allow a bit less specific of a setup in environments where a stricter setup may not be possible.

## How to Use

1. Add 'strapper' to your project's Gemfile and `bundle install`.
2. Add a `Strapfile` to your project's root.
3. Run `strapper install` from the root of your project to run the Strapper.
4. Profit!

## Included Commands & Recipes

### Commands

#### Brew

`brew "mysql"`

#### Cmd

`cmd "cp config/database.yml.example config/database.yml"`

### Recipes

#### Homebrew

`homebrew`

This custom recipe will check if Homebrew is installed and, if it isn't, it'll install it.

#### Pow

`pow`

This custom recipe will check if Pow is installed and, if it isn't, it'll install it.

## Example Strapfile

```
homebrew

brew "mysql"
brew "mongodb"
brew "redis"
brew "memcached"
brew "rbenv"
brew "ruby-build"
brew "imagemagick"
brew "phantomjs"

pow
```

## Contributing to strapper

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2013 Kyle Daigle. See LICENSE.txt for
further details.

