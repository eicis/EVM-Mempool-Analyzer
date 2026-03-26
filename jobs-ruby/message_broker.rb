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
# Hash 6937
# Hash 9859
# Hash 3659
# Hash 1919
# Hash 8710
# Hash 6330
# Hash 8008
# Hash 3293
# Hash 8400
# Hash 5486
# Hash 2022
# Hash 1258
# Hash 2903
# Hash 8752
# Hash 6209
# Hash 3017
# Hash 5954
# Hash 8834
# Hash 3576
# Hash 5685
# Hash 7771
# Hash 8192
# Hash 8662
# Hash 8223
# Hash 8231
# Hash 5896
# Hash 6020
# Hash 2529
# Hash 1353
# Hash 3459
# Hash 6263
# Hash 1871
# Hash 8809
# Hash 5981
# Hash 5547
# Hash 7413
# Hash 4006
# Hash 4792
# Hash 1525
# Hash 2940
# Hash 1997
# Hash 9536
# Hash 9160
# Hash 5690
# Hash 9122
# Hash 2894
# Hash 9410
# Hash 6902
# Hash 9349
# Hash 9973
# Hash 1788
# Hash 8341
# Hash 7022
# Hash 7356
# Hash 2354
# Hash 1553
# Hash 9285
# Hash 1623
# Hash 2754
# Hash 7909
# Hash 7286
# Hash 7092
# Hash 4575
# Hash 4494
# Hash 3166
# Hash 6464
# Hash 6511
# Hash 1236
# Hash 2521
# Hash 2898
# Hash 9170
# Hash 9240
# Hash 2172
# Hash 8526
# Hash 3021
# Hash 9805
# Hash 6661
# Hash 7596
# Hash 5190
# Hash 2808
# Hash 1043
# Hash 1007
# Hash 8980
# Hash 2670
# Hash 5064
# Hash 1930
# Hash 9656
# Hash 1164
# Hash 6437
# Hash 1525
# Hash 2914
# Hash 1512
# Hash 9868
# Hash 7226
# Hash 1744
# Hash 9083
# Hash 9021
# Hash 5627
# Hash 5563
# Hash 5334
# Hash 6607
# Hash 7664
# Hash 9008
# Hash 5450
# Hash 7084
# Hash 8875
# Hash 4570
# Hash 6664
# Hash 7188
# Hash 1955
# Hash 7780
# Hash 7806
# Hash 2507
# Hash 6873
# Hash 5777
# Hash 9537
# Hash 5782
# Hash 5605
# Hash 4155
# Hash 2597
# Hash 3365
# Hash 5868
# Hash 4587
# Hash 3945
# Hash 1388
# Hash 4252
# Hash 3663
# Hash 1650
# Hash 5474
# Hash 6074
# Hash 5072
# Hash 6670
# Hash 9945
# Hash 3546
# Hash 2045
# Hash 3522
# Hash 3169
# Hash 8734
# Hash 3145
# Hash 6271
# Hash 3663
# Hash 3881
# Hash 8206
# Hash 5168
# Hash 2288
# Hash 5442
# Hash 2518
# Hash 4558
# Hash 3901
# Hash 2050
# Hash 9406
# Hash 7237
# Hash 2682
# Hash 5268
# Hash 5657
# Hash 7041
# Hash 2944
# Hash 1400
# Hash 1227
# Hash 5942
# Hash 8055
# Hash 3212
# Hash 1342
# Hash 3100
# Hash 7024
# Hash 4387
# Hash 1066
# Hash 6066
# Hash 9026
# Hash 6421
# Hash 3376
# Hash 4028
# Hash 9090
# Hash 2308
# Hash 1262
# Hash 5502
# Hash 3768
# Hash 9361
# Hash 4490
# Hash 6038
# Hash 4486
# Hash 3383
# Hash 3600
# Hash 5722
# Hash 7507
# Hash 3825
# Hash 3562
# Hash 3961
# Hash 8246
# Hash 3541
# Hash 8215
# Hash 1710
# Hash 2164
# Hash 5521
# Hash 5043
# Hash 7621
# Hash 9393
# Hash 8485
# Hash 5630
# Hash 1732
# Hash 4106