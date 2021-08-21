
#!/bin/bash

# get current folder
DIR="$(dirname "${BASH_SOURCE[0]}")"

# retrieve a token to invoke and test the API
token=$(apictl get keys -n OnlineStore -v 1.0.0 -e dev)

# run newman test script
newman run $DIR/OnlineStore.postman_collection.json --env-var="token=$token" -k