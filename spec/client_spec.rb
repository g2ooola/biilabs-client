require './lib/biilabs/configuration.rb'
require './lib/biilabs/client.rb'
require './spec/mock_data/client_request_mock.rb'

describe Biilabs::Client do
  before(:all) do
    Biilabs.configuration do |config|
      config.host = 'http://rspec-test'
    end
    @client  = Biilabs::Client.new
    @tag     = 'rspec-tag'
    @message = 'rspec-message'
    @mock = Biilabs::Rspec::MockData::Client
  end
  
  describe ".save" do
    it 'post data to biilbas' do
      allow(@client).to receive(:http_post_tangle){
        response_of(@mock::POST_TANGLE)
      }

      result = @client.save(message: @message)
      expect(result).to include(@mock::POST_TANGLE[:result])
    end
  end

  def response_of(mock_data)
    Faraday::Response.new(mock_data[:response])
  end
end