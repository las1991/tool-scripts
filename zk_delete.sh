zkCli -server 127.0.0.1 ls /division/flow_queue_aliyun |sed 's/\[//g' |sed 's/\]//g' |sed 's/ //g' |sed 's/,/\
/g' |grep 12605_ |xargs -I {} zkCli -server 127.0.0.1 delete /division/flow_queue_aliyun/{}
