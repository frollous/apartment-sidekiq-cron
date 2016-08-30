# Apartment::Sidekiq::Cron

Just like `apartment-sidekiq` takes care of storing the current tenant
that a job is enqueued within, `apartment-sidekiq-cron` does the same
for `sidekiq-cron`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apartment-sidekiq-cron'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apartment-sidekiq-cron

## Usage

The same as for `apartment-sidekiq`: That's it! Each `sidekiq-cron` job
will get an additional entry storing the current tenant.

Optionally, you can store the configuration for `sidekiq-cron` in a file
`sidekiq_cron.yml` in Rails' `config` folder. The format for this
configuration is:
```
<name of job>:
  cron: "0 * * * *"
  class: '<worker class>'
  queue: '<queue>'
  apartment: '<apartment name>'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/goskive/apartment-sidekiq-cron. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

