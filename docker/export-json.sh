#!/bin/bash
# script exporting variables from json payload
values=$(echo $(cat $TRIGGER_PAYLOAD) | jq '.variables.jsonbase64' | base64 -d )
while read -rd $'' line
do
    export "$line"
done < <(jq -r <<<"$values" \
         'to_entries|map("\(.key)=\(.value)\u0000")[]')