#!/bin/bash
( set -x
curl -s -v "https://mitreid.org/.well-known/webfinger\
?resource=acct:user@mitreid.org\
&rel=http://openid.net/specs/connect/1.0/issuer" | jq .
)
echo
