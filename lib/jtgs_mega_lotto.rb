require "jtgs_mega_lotto/version"
require "jtgs_mega_lotto/drawing"
require "jtgs_mega_lotto/core_ext"
require "jtgs_mega_lotto/configuration"

begin
  require "pry"
rescue LoadError
end

module JtgsMegaLotto
  class << self
    attr_accessor :configuration
  end
  #binding.pry

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
