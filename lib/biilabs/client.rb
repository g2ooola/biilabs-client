require 'faraday'
require 'json'
require 'biilabs/default_tryter'
require 'biilabs/configuration'
require 'biilabs/base'
require 'biilabs/error'

# TODO : need more info about response status
module Biilabs
  class Client < Base

    # API_HOST = 'http://node0.puyuma.org:5566'
    SAVE_PATH = '/transaction'
    GET_BY_ID_PATH = '/transaction'
    GET_BY_TAG_PATH = '/tag'

    TRYTES_TAG_MAX_LENGTH = 27
    TRYTES_MESSAGE_MAX_LENGTH = 2187

    def initialize(option={})
      @show_raw_data = false
      super(option)
    end

    def show_raw_data(show=true)
      @show_raw_data = show
    end

    def save(tag: 'default', message:)
      # TODO : check max length of tag & message (27 trytes)
      # max length of message is 2187 ?

      trytes_data = biilabs_post_format(tag: tag, message: message)
      response    = http_post_tangle(trytes_data)
      raw_data    = JSON.parse(response.body)
      info        = node_summary(raw_data)

      return_result(
        response: response,
        info: info,
        raw_data: raw_data
      )
    end

    def get(node_id)
      response = http_get_tangle(node_id)
      raw_data = JSON.parse(response.body)
      info     = node_summary(raw_data)
      
      return_result(
        response: response,
        info:     info,
        raw_data: raw_data
      )
    end

    def get_by_tag(tag)
      tryte_tag = tag_to_trytes(tag)
      response  = http_tag_get_tangle(tryte_tag)
      raw_data  = JSON.parse(response.body)
      info      = nodes_summary(raw_data)
      
      return_result(
        response: response,
        info:     info,
        raw_data: raw_data
      )
    end

    private

    def tryter
      @tryter ||= DefaultTryter.new
    end

    def connection
      @connection ||= Faraday.new(url: config.host) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests and responses to $stdout
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end

    def return_result(response:, info:, raw_data:)
      result = {
        status: response.status,
        info: info
      }
      result[:raw_data] = raw_data if @show_raw_data
      result
    end

    # ====== helper for send request ======
    def tag_to_trytes(tag)
      trytes_tag = tryter.to_trytes(tag)
      if trytes_tag.length > TRYTES_TAG_MAX_LENGTH
        raise Error.new("
          Tag is too long after trytes-encode :
          #{tag} -> #{trytes_tag}
          longth of [tag] : #{tag.length}
          longth of [tag after trytes] : #{trytes_tag.length}
          max-longth of [tag after trytes] : #{TRYTES_TAG_MAX_LENGTH}
          you can change trytes-encoder or use a shorter tag.
        ")
      end
      trytes_tag
    end

    def message_to_trytes(message)
      trytes_message = tryter.to_trytes(message)
      if trytes_message.length > TRYTES_MESSAGE_MAX_LENGTH
        raise Error.new("
          Message is too long after trytes-encode :
          original message : #{message}
          longth of [message]                  : #{message.length}
          longth of [message after trytes]     : #{trytes_message.length}
          max-longth of [message after trytes] : #{TRYTES_MESSAGE_MAX_LENGTH}
          you can change trytes-encoder or use a shorter message.
        ")
      end
      trytes_message
    end

    def biilabs_post_format(tag: ,message:)
      {
        tag: tag_to_trytes(tag),
        message: message_to_trytes(message)
      }.to_json
    end

    # ====== helper for http response ======
    KEY_MESSAGE = 'signature_and_message_fragment'
    KEY_TAG     = 'tag'
    KEY_NODE_ID = 'hash'
    KEY_CREATED_AT = 'attachment_timestamp'
    def node_summary(result)
      {
        message:    tryter.from_trytes(result[KEY_MESSAGE]),
        tag:        tryter.from_trytes(result[KEY_TAG]),
        node_id:    result[KEY_NODE_ID],
        created_at: result[KEY_CREATED_AT]
      }
    end

    def nodes_summary(result_of_nodes)
      result_of_nodes['transactions'].map do |result_of_node|
        node_summary(result_of_node)
      end
    end

    # ====== http request ======
    def http_post_tangle(trytes_data)
      connection.post do |req|
        req.url SAVE_PATH
        req.headers['Content-Type'] = 'application/json'
        req.body = trytes_data
      end
    end

    def http_get_tangle(node_id)
      connection.get do |req|
        req.url "#{GET_BY_ID_PATH}/#{node_id}"
      end
    end

    def http_tag_get_tangle(tag)
      connection.get do |req|
        req.url "#{GET_BY_TAG_PATH}/#{tag}"
      end
    end
  end
end