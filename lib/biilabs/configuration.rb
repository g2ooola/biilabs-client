module Biilabs
  class << self
    attr_writer :configuration
  end

  def self.configuration
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end

  def self.reset_config
    @config = Configuration.new
  end

  class Configuration
    attr_accessor :host
  end
end