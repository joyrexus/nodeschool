#!/bin/sh

cat people.csv | sed 's/ //g' | csv-parser | jq '.FIRST + " " + .LAST'
