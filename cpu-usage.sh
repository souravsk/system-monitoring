#!/bin/bash

: '
    This bash file will get the cpu usage of the system.

    Title: CPU USAGE MONITORING
    AUTHOR: Sourav Kumar
    DATE: 22TH AUGUST, 2023
'

function cpu_usage {
        echo "---------------------------" >> $1.txt
        echo "--------CPU Usage----------" >> $1.txt
        echo "---------------------------" >> $1.txt
        ps -eocomm,pcpu | grep -E -v '(0.0)' >> $1.txt
}