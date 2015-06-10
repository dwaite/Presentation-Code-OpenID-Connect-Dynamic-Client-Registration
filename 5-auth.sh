#!/bin/sh

(set -x;
open "https://mitreid.org/authorize\
?client_id=$client_id\
&response_type=code\
&redirect_uri=http://localhost:4000/callback\
&scope=openid\
&state=cis2015rocks"

nc -l 4000 < 200-ok.txt
)
