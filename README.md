# Redis Dictionary

[![Build Status](https://travis-ci.org/redrick/redis_dictionary.png?branch=master)](https://travis-ci.org/redrick/redis_dictionary)
[![Coverage Status](https://coveralls.io/repos/redrick/redis_dictionary/badge.png?branch=master)](https://coveralls.io/r/redrick/redis_dictionary?branch=master)
[![Gem Version](https://badge.fury.io/rb/redis_dictionary.png)](http://badge.fury.io/rb/redis_dictionary)

Rails frontend for i18n with redis backend as extended version of [fourmach/i18n_dashboard](https://github.com/fourmach/i18n_dashboard) gem.

## Screenshots

![#](https://raw.github.com/redrick/redis_dictionary/master/doc/screenshot-1.png)
![#](https://raw.github.com/redrick/redis_dictionary/master/doc/screenshot-2.png)


## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'redis_dictionary'
```


And then execute:

```
$ bundle
```
And finally execute:

```
$ rails g redis_dictionary:install
```

after install, look into initializer that was created for you, for now I added menu config in there


## Thanks
  
  * [Jose Galisteo](https://github.com/ceritium) for writing [I18n_dashboard](https://github.com/fourmach/i18n_dashboard)
  * [Alberto Fernández-Capel](https://github.com/afcapel): [Setup integration tests with capybara](https://github.com/fourmach/i18n_dashboard/pull/1)
  * Great tips of [Blogit](https://github.com/KatanaCode/blogit).


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
