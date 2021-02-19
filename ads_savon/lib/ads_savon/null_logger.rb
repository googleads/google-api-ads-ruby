require "ads_savon/logger"

module GoogleAdsSavon
  class NullLogger < Logger

    def log(*)
    end

  end
end
