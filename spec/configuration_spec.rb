require './lib/biilabs/configuration.rb'
require './lib/biilabs/client.rb'

describe Biilabs do
  describe ".configuration" do
    it "set value to config" do
      host = 'http://biilabs.test.client'
      Biilabs.reset_config

      expect{
        set_biilabs_host(host)
      }.to change{
        Biilabs.config.host
      }.from(nil).to(host)
    end

    it "set value to Client" do
      host = 'http://biilabs.test.client.config'
      Biilabs.reset_config
      
      expect{
        set_biilabs_host(host)
      }.to change{
        Biilabs::Client.new.config.host
      }.from(nil).to(host)
    end
  end

  def set_biilabs_host(host)
    Biilabs.configuration do |config|
      config.host = host
    end
  end
end