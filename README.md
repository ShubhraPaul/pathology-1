# Pathology

[![Gem Version](https://badge.fury.io/rb/pathology.svg)](http://badge.fury.io/rb/pathology)
[![Build Status](https://travis-ci.org/mattgillooly/pathology.svg?branch=master)](https://travis-ci.org/mattgillooly/pathology)
[![Code Climate](https://codeclimate.com/github/mattgillooly/pathology.png)](https://codeclimate.com/github/mattgillooly/pathology)

Specify a template to be used for generating paths by replacing :tokens with values from a hash.
This can be handy if you want to generate dynamic filenames or URLs using runtime data and a configurable format.

## Installation

Add this line to your application's Gemfile:

    gem 'pathology'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pathology

## Usage

```ruby

template = Pathology.template("~/notes/:date/:topic.txt")

filename = template.interpolate({
  :date => Date.today,
  :topic => 'hello'
}) # => "~/notes/2014-05-24/hello.txt"

```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/pathology/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
