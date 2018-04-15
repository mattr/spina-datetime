# Spina::Datetime
**DISCLAIMER: THIS GEM IS IN EARLY DEVELOPMENT AND NOT NECESSARILY SUITABLE FOR USE YET.**

[Spina CMS](https://spinacms.com) supports simple extension via rails engines. This adds the option
to have date and datetime inputs on any page, rather than only in custom sections (e.g. the events 
plugin from the tutorial).

## Usage
Register the date and/or datetime options in your current theme:
```ruby
theme.page_parts = [{
  # ...
  }, {
    name:           'date',
    title:          'Date',
    partable_type:  'Spina::Date'
  }, {
    name:           'datetime',
    title:          'Date & Time',
    partable_type:  'Spina::DateTime'
  }]
```

Note that you don't have to use these names and titles; in fact you can add multiple instances, 
e.g. if you need a `published_at` field for blog posts. `Spina::Date` and `Spina::DateTime` can
also be used in custom structure parts, not just page parts.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'spina-datetime', github: 'mattr/spina-datetime'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install spina-datetime
```

## Contributing
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

In addition to contributing code, you can help to triage issues. This can include reproducing bug reports, or asking for vital information such as version numbers or reproduction instructions.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
