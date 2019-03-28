require 'faraday'
require 'json'
require 'biilabs/default_tryter.rb'
require 'biilabs/configuration.rb'
require 'biilabs/base.rb'

# TODO : need more info about response status
module Biilabs
  class Client < Base

    # API_HOST = 'http://node0.puyuma.org:5566'
    SAVE_PATH = '/transaction'
    GET_BY_ID_PATH = '/transaction'
    GET_BY_TAG_PATH = '/tag'

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

      data     = biilabs_put_format(tag: tag, message: message)
      response = http_put_tangle(data)
      raw_data = JSON.parse(response.body)
      info     = node_summary(raw_data)

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
      tryte_tag = tryter.to_trytes(tag)
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

    def biilabs_put_format(tag: ,message:)
      trytes_tag     = tryter.to_trytes(tag)
      trytes_message = tryter.to_trytes(message)
      { tag: trytes_tag, message: trytes_message }.to_json
    end

    KEY_MESSAGE = 'signature_and_message_fragment'
    KEY_TAG     = 'tag'
    KEY_NODE_ID = 'hash'
    KEY_CREATED_AT = 'attachment_timestamp'
    def node_summary(result)
      {
        message:    tryter.from_trytes(result[KEY_MESSAGE]),
        tag:        tryter.from_trytes(result[KEY_TAG]),
        node_id:    result[KEY_NODE_ID],
        created_at: result[KEY_NODE_ID]
      }
    end

    def nodes_summary(result_of_nodes)
      result_of_nodes['transactions'].map do |result_of_node|
        node_summary(result_of_node)
      end
    end

    def http_put_tangle(trytes_data)
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