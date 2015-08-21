require "ads_savon/version"
require "ads_savon/config"
require "ads_savon/client"
require "ads_savon/model"

module GoogleAdsSavon
  extend self

  def client(*args, &block)
    Client.new(*args, &block)
  end

  def configure
    yield config
  end

  def config
    @config ||= Config.default
  end

  attr_writer :config

end
