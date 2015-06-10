#!/bin/bash
( set -x
curl -s -v "https://mitreid.org/.well-known/openid-configuration" | jq .
)
echo
