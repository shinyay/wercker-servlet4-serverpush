#!/bin/sh

count=0
while [ $count -lt 100 ]; do
  tmp_str=`lsof -i:4848`
  if [ "$tmp_str" != "" ]; then
    echo "GlassFish is started."
    break;
  fi
  echo "GlassFis is starting..."
  count=`expr $count + 1`
  sleep 1
done
