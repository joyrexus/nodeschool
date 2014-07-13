#!/bin/sh

cat people.csv | csv-parser | jsonfilter FIRST
