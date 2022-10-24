#!/usr/bin/python

import sys
import urllib.parse

if len(sys.argv) == 1:
    print("No arguments given - please specify a query")
else:
    query = ' '.join(sys.argv[1:])
    http = urllib.parse.quote(query)
    sys.stdout.write(http)

sys.exit(0)
