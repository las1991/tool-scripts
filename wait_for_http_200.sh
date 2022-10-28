#!/bin/bash
url=http://10.100.1.120:8900/division-api/ok

until [[ $(curl -I -m 10 -o /dev/null -s -w %{http_code} $url) -eq 200 ]]
do
    printf 'not 200'
    sleep 5
done
printf 'success\n'

while [ true ]
do
    http_code=$(curl -I -m 10 -o /dev/null -s -w %{http_code} $url)
    if [[ $http_code -eq 200 ]]; then
        echo "success"
        break
    fi
    sleep 1s
    echo "$? ..."
done
