module Chillout
  class Dispatcher

    def initialize(filter, server_side)
      @filter      = filter
      @server_side = server_side
    end

    def dispatch_error(error)
      if @filter.deliver_error?(error)
        send_error(error)
      end
    end

    def send_error(error)
      @server_side.send_error(error)
    end

  end
end
