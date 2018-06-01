jstack -l `jps |grep MediaPortalServer | awk '{printf $1}'` |grep nid=0x |sed ':a;s/^\(\([^"]*"[^"]*"[^"]*\)*[^"]*"[^"]*\) /\1_/;ta' |awk -F" " '{printf $1 "\n"}'
