#!/bin/bash

TOKEN='AAAAAAAAAAAAAAAAAAAAAILWiQEAAAAAIGSBaJbgx87CDIVonfXs3eASnEA%3DOz08lEqqTu3N4rOAkGzNkdpyrNgCrDiEM8FDCp7ybOir7T4g6t'

QUERY=`python httpEncoder.py $1`

curl --request GET "https://api.twitter.com/2/tweets/search/recent?query=${QUERY}&max_results=10" --header "Authorization: Bearer ${TOKEN}"




