#!/bin/bash

echo "ping start..."
>./ip.txt

for i in {1..254} 
do
{
    ip=10.0.2.${i}
    ping -c1 ${ip} >/dev/null 2>&1
    if [ $? == 0 ];then
	echo $ip
	echo ${ip} >> ./ip.txt
    fi

}&
done

wait
echo "ping end..."
