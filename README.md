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

    $ bundle

Modify your config/routes.rb and add:

``` ruby
mount RedisDictionary::Engine => '/translations'
```

### !IMPORTANT!
I have just realized I put these down, but I found out you got to do it by yourself:

In your config/environment.rb add:

``` ruby
RedisDictionary::Engine.load!
```
otherwise the dictionary would not initialize properly

and for example, here is my ```config/initializers/i18n.rb```

```
TRANSLATION_STORE = Redis.new
I18n.backend = I18n::Backend::Chain.new(I18n::Backend::KeyValue.new(TRANSLATION_STORE), I18n.backend)

I18n.available_locales = [:en, :cs]
I18n.default_locale = :cs

RedisDictionary::Engine.redis = TRANSLATION_STORE
```


## Thanks
  
  * [Jose Galisteo](https://github.com/ceritium) for writing [I18n_dashboard](https://github.com/fourmach/i18n_dashboard)
  * [Alberto Fernández-Capel](https://github.com/afcapel): [Setup integration tests with capybara](https://github.com/fourmach/i18n_dashboard/pull/1)
  * Great tips of [Blogit](https://github.com/KatanaCode/blogit).
