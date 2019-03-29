# BiiLabs-Client

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'biilabs-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install biilabs-client

### Usage

Config biilabs host on initialize :

```ruby
  Biilabs.configuration do |config|
    config.host = '[HOST_URL]'
  end
```

and require it

```ruby
  require 'biilabs'
```

save data on Biilabs
```ruby
  client = Biilabs::Client.new
  post_result = client.save(tag: tag, message: data)
```

get your data from Biilbas (need node id from post response)
```ruby
  get_result = client.get(post_result[:info][:node_id])
```

get your datas by tag
```ruby
  tag_result = client.get_by_tag(tag)
```

see detail sample on sample/sample.rb


### Trytes

all data store in Tangle must be trytes format
see biilabs/defautl_trytes_encoder.rb for more detail.
