#!/bin/sh

# Check arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create parent directory if it does not exist
mkdir -p "$(dirname "$writefile")"

# Write content to file (overwrite if it exists)
if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not create file '$writefile'"
    exit 1
fi

exit 0