#!/bin/bash
PDA_SOCKET=0.0.0.0:26657
CELESTIA_NODE_WRITE_TOKEN=foobar

curl -H "Content-Type: application/json" -H "Authorization: Bearer $CELESTIA_NODE_WRITE_TOKEN" -X POST \
     --data '{ "id": 1, "jsonrpc": "2.0", "method": "blob.Get", "params": [ 1072705, "AAAAAAAAAAAAAAAAAAAAAAAAAFHMGnPWX5X2veY=", "S2iIifIPdAjQ33KPeyfAga26FSF3IL11WsCGtJKSOTA="] }' \
     https://$PDA_SOCKET \
     --insecure
# blob.GetAll
curl -H "Content-Type: application/json" -H "Authorization: Bearer $CELESTIA_NODE_WRITE_TOKEN" -X POST \
     --data '{ "id": 1, "jsonrpc": "2.0", "method": "blob.GetAll", "params": [ 1072705, [ "AAAAAAAAAAAAAAAAAAAAAAAAAFHMGnPWX5X2veY=" ] ] }' \
     https://$PDA_SOCKET \
     --insecure
