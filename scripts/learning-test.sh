#!/bin/bash
# set -e
set -Eeuo pipefail

get_data() {
    # curl -s "https://api.coindesk.com/v1/bpi/currentprice/BTC.json" | jq '.bpi.USD.rate'
    return 1
    # exit 1
}
top() {
    get_data || echo "failed to get data"
}

top
# get_data || echo "my test"
# get_data