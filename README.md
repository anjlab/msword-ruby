# MSWord

Simple work with MS Word docs

## Installation

Add this line to your application's Gemfile:

    gem 'msword'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install msword

## Usage

Right now this gem supports only **find and replace** command.

```ruby
require 'msword'

MSWord.replace 'src.doc', 'dest.doc', [
  ['hello', 'bye'], ['#{date}', Time.now.to_s]
]

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
