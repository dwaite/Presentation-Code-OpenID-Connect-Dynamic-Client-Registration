#!/bin/bash

# look up well-known configuration location based on issuer domain
export domain=$(echo $issuer | sed -E 's/^http(s)?:\/\/([^\/]*)\//\2/g')

export config=$(curl -s -v "https://$domain/.well-known/openid-configuration")

# Pretty print config
echo $config | jq .

# authorization_endpoint
export authorization_endpoint=$(echo -n $config | jq -r .authorization_endpoint )
# token_endpoint
export token_endpoint=$(echo -n $config | jq -r .token_endpoint )
# registration_endpoint
export registration_endpoint=$(echo -n $config | jq -r .registration_endpoint )

