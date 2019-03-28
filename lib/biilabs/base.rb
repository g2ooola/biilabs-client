module Biilabs
  class Base
    attr_accessor :config
    def initialize(option={})
      @config = option[:config] || Biilabs.config
    end
  end
end