require './lib/biilabs/configuration.rb'
require './lib/biilabs/client.rb'
require './spec/mock_data/client_request_mock.rb'
require './lib/biilabs/error.rb'

describe Biilabs::Client do
  before(:all) do
    Biilabs.configuration do |config|
      config.host = 'http://rspec-test'
    end
    @client  = Biilabs::Client.new
    @mock = Biilabs::Rspec::MockData::Client
  end

  describe ".save" do
    it 'post data and parse response' do
      allow(@client).to receive(:http_post_tangle){
        proc_by_farady_gem(@mock::POST_TANGLE[:response])
      }

      output = @client.save(
        message: @mock::POST_TANGLE[:input][:message]
      )
      expect(output).to include(@mock::POST_TANGLE[:output])
    end

    it 'raise error when tag is too long' do
      # with default-tryter, string length will double after encode.
      # max tag-length-trytes-style  : 27
      # max tag-length-general-style : 13

      max_length = Biilabs::Client::TRYTES_TAG_MAX_LENGTH / 2
      allow(@client).to receive(:http_post_tangle){
        proc_by_farady_gem(@mock::POST_TANGLE[:response])
      }

      ok_tag = '0' * max_length
      expect {
        @client.save(tag: ok_tag, message: '')
      }.not_to raise_error(Biilabs::Error, /Tag is too long/)

      ng_tag = '0' * (max_length + 1)
      expect {
        @client.save(tag: ng_tag, message: '')
      }.to raise_error(Biilabs::Error, /Tag is too long/)
    end

    it 'raise error when message is too long' do
      # with default-tryter, string length will double after encode.
      # max tag-length-trytes-style  : 2187
      # max tag-length-general-style : 1093

      max_length = Biilabs::Client::TRYTES_MESSAGE_MAX_LENGTH / 2
      allow(@client).to receive(:http_post_tangle){
        proc_by_farady_gem(@mock::POST_TANGLE[:response])
      }

      ok_message = '0' * max_length
      expect {
        @client.save(tag: '0', message: ok_message)
      }.not_to raise_error(Biilabs::Error, /Message is too long/)

      ng_message = '0' * (max_length + 1)
      expect {
        @client.save(tag: '0', message: ng_message)
      }.to raise_error(Biilabs::Error, /Message is too long/)
    end
  end

  describe ".get" do
    it 'get data and parse response' do
      allow(@client).to receive(:http_get_tangle){
        proc_by_farady_gem(@mock::GET_TANGLE[:response])
      }

      result = @client.get(@mock::GET_TANGLE[:node_id])
      expect(result).to include(@mock::GET_TANGLE[:result])
    end
  end

  describe ".get_by_tag" do
    it 'get data by tag and parse response' do
      allow(@client).to receive(:http_tag_get_tangle){
        proc_by_farady_gem(@mock::GET_TAG_TANGLE[:response])
      }

      result = @client.get_by_tag(@mock::GET_TAG_TANGLE[:tag])
      expect(result).to include(@mock::GET_TAG_TANGLE[:result])
    end
  end

  def proc_by_farady_gem(mock_data)
    Faraday::Response.new(mock_data)
  end
end