#!/bin/sh

# Build the browser URL to send the user to the OP for authorization.

(set -x;
open "$authorization_endpoint\
?client_id=$client_id\
&response_type=code\
&redirect_uri=http://localhost:4000/callback\
&scope=openid\
&state=cis2015rocks"

# Local socket to 'catch' the callback URL.
nc -l 4000 < 200-ok.txt
)
