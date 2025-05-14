#!/bin/bash
PDA_SOCKET=0.0.0.0:26657
CELESTIA_NODE_WRITE_TOKEN=foobar

curl -H "Content-Type: application/json" -H "Authorization: Bearer $CELESTIA_NODE_WRITE_TOKEN" -X POST \
     --data '{ "id": 1, "jsonrpc": "2.0", "method": "blob.Submit", "params": [ [ { "namespace": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAMJ/xGlNMdE=", "data": "DEADB33F", "share_version": 0, "commitment": "aHlbp+J9yub6hw/uhK6dP8hBLR2mFy78XNRRdLf2794=", "index": -1 } ], {} ] }' \
     https://$PDA_SOCKET \
     --insecure
