require "chronic_ping/engine"
require 'chronic'

module ChronicPing
  require 'chronic_ping/configuration'

  def self.configure
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end
end
