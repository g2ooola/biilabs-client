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

#### save data on Biilabs

```ruby
  client = Biilabs::Client.new
  post_result = client.save(tag: 'tag', message: 'data')
```

response of `save`

```ruby
  {
    status: 200,
    info: {
      message: "data",
      tag: "tag",
      node_id: "C9FTQD...HRZ9999",
      created_at: 1553829374238
    }
  }
```

#### get your data from Biilbas (need node id from post response)

```ruby
  get_result = client.get(post_result[:info][:node_id])
```

response of `get` is same with `save`

#### get your datas by tag

```ruby
  tag_result = client.get_by_tag(tag)
```

response of tag

```ruby
  {
    status: 200,
    info: [
      {
        message: "m2",
        tag: "tt",
        node_id: "VCMPD...GXMT99999",
        created_at: 1553843097040
      },
      {
        message: "m0",
        tag: "tt1553843093",
        node_id: "THLE..AZ9999",
        created_at: 1553843095202
      },
      {
        message: "m1",
        tag: "tt1553843093",
        node_id: "PM...IA9999",
        created_at: 1553843096080
      }
    ]
  }
```

#### sample

see detail sample on `sample/sample.rb`


### Trytes

all data store in Tangle must be trytes format
see `biilabs/defautl_trytes_encoder.rb` for more detail.
