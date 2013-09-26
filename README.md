# I18n Dashboard 

:( TEMPORARILY DISABLING BUILD INFO :(
[![Build Status](https://travis-ci.org/redrick/i18n_dashboard.png?branch=master)](https://travis-ci.org/redrick/i18n_dashboard)
<!---
[![Gem Version](https://badge.fury.io/rb/i18n_dashboard.png)](http://badge.fury.io/rb/i18n_dashboard)
[![Code Climate](https://codeclimate.com/github/fourmach/i18n_dashboard.png)](https://codeclimate.com/github/fourmach/i18n_dashboard)
[![Coverage Status](https://coveralls.io/repos/fourmach/i18n_dashboard/badge.png?branch=master)](https://coveralls.io/r/fourmach/i18n_dashboard?branch=master)
-->

Rails Engine for I18n management with redis as backend.

## Screenshots

![#](https://raw.github.com/redrick/i18n_dashboard/master/doc/screenshot-1.png)
![#](https://raw.github.com/redrick/i18n_dashboard/master/doc/screenshot-2.png)


## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'i18n_dashboard', github: 'redrick/i18n_dashboard', branch: 'master'
```


And then execute:

    $ bundle

Modify your config/routes.rb and add:

``` ruby
mount I18nDashboard::Engine => '/translations'
```

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
