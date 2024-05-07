#!/bin/bash

long_path=$1

short_path= "$(basename $(dirname $long_path))/$(basename $long_path)"

input-remapper-control --command autoload

firefox -kiosk "http://127.0.0.1:8080/$short_path"  

input-remapper-control --command stop-all
