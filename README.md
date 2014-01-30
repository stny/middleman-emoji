# Middleman::Emoji

`middleman-emoji` is an extension for the Middleman static site generator that
makes emoji available.

## Installation

If you're just getting started, install the `middleman` gem and generate a new project:

```bash
$ gem install middleman
$ middleman init MY_PROJECT
```

If you already have a Middleman project: Add `gem "middleman-emoji"` to your `Gemfile` and run `bundle install`.

## Configuration

Edit your `config.rb` as follows:

```ruby
activate :emoji
```:

```ruby
activate :emoji, :dir => 'images/emoji', :width => 30, :height => 30
```

## Usage

```
# your.html/erb/haml...
:thumbsup:
```

:thumbsup:
