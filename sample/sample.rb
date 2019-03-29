$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'biilabs'

# how to use
# step 1. setting host
# step 2. run `irb -r ./sample/sample.rb`

def init
  Biilabs.configuration do |config|
    config.host = SET_HOST_URL_HERE_HERE
  end
end

def sample
  data = '123'
  tag = "tt#{Time.now.to_i}" # timestamp to avoid tag duplication
  client = Biilabs::Client.new

  # `client.show_raw_data` # to show raw_data on console

  # post data to tangle
  post_result = client.save(tag: tag, message: data)

  # get data from tangle
  get_result = client.get(post_result[:info][:node_id])

  # check data
  puts " raw_data  : #{data}"
  puts " node_data : #{get_result[:info][:message]}"
  puts " raw_data == node_data : #{data == get_result[:info][:message]}"


  # show node info
  puts "\n\n\n"
  puts " node info : #{get_result[:info]}"


  # post nodes info by tag
  post_result = client.save(tag: tag, message: '456')
  tag_result = client.get_by_tag(tag)
  puts "\n\n\n"
  puts " node infos by tag : #{tag_result[:info]}"
end

init()
sample()