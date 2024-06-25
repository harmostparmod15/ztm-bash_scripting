#!/bin/bash
echo "displaying content of :: " ${1}
sleep 2
cat ${1}
echo
echo "compressing............ " ${1}
sleep 2	
tar -zcvf "$1.tar.gz"  ${1}
