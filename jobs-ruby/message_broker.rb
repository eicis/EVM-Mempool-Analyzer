module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Hash 3219
# Hash 1692
# Hash 3989
# Hash 2070
# Hash 1723
# Hash 7085
# Hash 4097
# Hash 7731
# Hash 1745
# Hash 7053
# Hash 1129
# Hash 3334
# Hash 7826
# Hash 7213
# Hash 1011
# Hash 4671
# Hash 7784
# Hash 7312
# Hash 2164
# Hash 6081
# Hash 4692
# Hash 8144
# Hash 2575
# Hash 7805
# Hash 5966
# Hash 5594
# Hash 8996
# Hash 4441
# Hash 7597
# Hash 7998
# Hash 3131
# Hash 3676
# Hash 9815
# Hash 1576
# Hash 6024