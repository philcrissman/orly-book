# Orly::Book

Uses orly-appstore.herokuapp.com to create fake O'Reilly-style book covers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'orly-book'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install orly-book

## Usage

Use like this:

```
require 'orly/book'

Orly::Book.new("ritap", :title => "Rails In Theory And Practice", :top_text => "Good Enough", :author => "Aliester Curley", :theme => 10, :animal => 33)
```

The first (string) param will be the filename.

This will write the binary file that the orly-appstore.herokuapp.com creates to your current directory as "ritap.png".

### Themes

0: Deep Purple
1: Grey
2: Wine
3: Red
4: Burgundy
5: Indigo
6: Bright Red
7: Sky Blue
8: Yellow
9: Navy Blue
10: Purple
11: Green
12: Teal
13: Blue
14: A different red, I guess?
15: Brighter green
16: Lighter green

### Animals

1: Bear
2: Cat
3: Fox
4: Cow
5: Horse
6: Deer
7: Baboon
8: Some sort of rodent, I guess?
9: Platypus
10: Bat
11: Pelican
12: A bird?
13: A different bird?
14: Crow
15: Ostrich
16: Chameleon
17: Frog
18: Lizard
19: Gecko
20: Snake
21: Catfish
22: Some other kind of fish
23: Yet another different fish
24: Eel
25: Shark?
26: Butterfly
27: Some insect
28: Fly
29: Dragonfly
30: Beetle
31: Spider
32: Scorpion
33: Crab
34: Lobster
35: Something?
36: Something else?
37: Definitely a thing
38: Probably a jellyfish
39: I have no idea, maybe a rock?
40: Fungi

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Caveat: I didn't write any tests. Sorry.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/philcrissman/orly-book. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
