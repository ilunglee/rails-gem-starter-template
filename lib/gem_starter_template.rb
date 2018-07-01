# Base
module GemStarterTemplate

  @log_level = nil
  @logger    = nil

  class << self

    # attr_accessor :config

  end

  def self.setup
    yield self
  end

end
