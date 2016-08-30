require 'apartment/sidekiq/cron/version'
require 'apartment-sidekiq'

module Apartment
  module Sidekiq
    module Cron
      def initialize(input_args)
        super

        args = input_args.stringify_keys
        if args['apartment']
          message = @message.is_a?(Hash) ? @message : JSON.parse(@message)
          message['apartment'] = args['apartment']
          @message = JSON.dump(message)
        end
      end
    end
  end
end

require 'apartment/sidekiq/cron/railtie' if defined?(Rails)
