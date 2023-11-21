#!/bin/bash

: '
    This file will show the usage of the memory
    Title: Memory USAGE MONITORING
    AUTHOR: Sourav Kumar
    DATE: 22TH AUGUST, 2023
'
function memory_usage {
    echo "----------------------------" >> $1.txt
    echo "---------Memory Usage-------" >> $1.txt
    echo "----------------------------" >> $1.txt
    ps -eocomm,pmem | grep -E -v '(0.0)' >> $1.txt
}