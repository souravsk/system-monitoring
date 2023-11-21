#!/bin/bash

: '
    Title: Convert .txt file into .pdf 
    AUTHOR: Sourav Kumar
    DATE: 22TH AUGUST, 2023
'
function getPdf {
    cupsfilter "$1".txt > "$1".pdf
}