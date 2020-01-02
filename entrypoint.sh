#!/bin/sh -l

data='{"attachments": [{"color": "'${1}'","text": "'${2}'"}]}'
curl -X POST -H 'Content-type: application/json' --data "$data" $3
