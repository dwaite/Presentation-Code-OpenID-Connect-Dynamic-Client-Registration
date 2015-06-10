#!/bin/bash

# Here we are going to do a webfinger lookup for the given user account
export acct=$1
echo "Performing WebFinger lookup for account $acct"
IFS='@' read user domain <<< "$acct"

url="https://$domain/.well-known/webfinger\
?resource=acct:$acct\
&rel=http://openid.net/specs/connect/1.0/issuer"

export result=$(curl -s -v $url)
export issuer=$(echo $result | jq -r .links[0].href)
echo $result | jq .

echo
