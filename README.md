# Bottle Recycler

Bottle Recycler is an application for calculating your return on investment from bottle recycling

###Building the gem

```ruby
  gem build bottle_recycler.gemspec

###Installing the gem

```ruby
  gem install ./bottle_recycler-0.0.2.gem

###Using the gem from the command line

```ruby
  bottle_recycler 20

###Using the gem in another ruby application

```ruby
  require 'bottle_recycler'
  recycler = BottleRecycler.new(20)
  puts recycler.payout