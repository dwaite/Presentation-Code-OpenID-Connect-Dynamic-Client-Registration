#!/bin/sh
# Assumption is that the system is running Mac OS X, with homebrew

# make sure curl and jq (json query) are installed
brew install jq curl

# open jwt.io in default browser. We will use this to parse the id_token at the end
open http://jwt.io

