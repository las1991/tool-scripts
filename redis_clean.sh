nohup redis-cli -h rds.com -a 12345 --scan --pattern "test_*"  1000| xargs -L 1000 redis-cli  -h rds.com -a 12345 del > ./redis_del.log 2>&1 &
