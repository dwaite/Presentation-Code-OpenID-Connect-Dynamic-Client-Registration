#!/bin/bash

# Final stretch! We are going to exchange the code (as a script parameter) for tokens

export code=$1
( set -x
curl -s -v -u $client_id:$client_secret \
-d "grant_type=authorization_code" \
-d "code=$code" \
-d "redirect_uri=http://localhost:4000/callback" \
"$token_endpoint" | jq .
)
echo
