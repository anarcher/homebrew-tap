#\!/bin/bash

# Usage: ./download_checksums.sh <owner> <repo> <tag_name>
# Example: ./download_checksums.sh anarcher homebrew-tap v0.0.1
# This will download to: homebrew-tap_v0.0.1.checksums.txt

if [ $# -ne 3 ]; then
    echo "Usage: $0 <owner> <repo> <tag_name>"
    exit 1
fi

OWNER=$1
REPO=$2
TAG=$3
FILE="${REPO}_${TAG}.checksums.txt"

URL="https://github.com/${OWNER}/${REPO}/releases/download/${TAG}/checksums.txt"
echo "Downloading from: ${URL}"
curl -L -o "${FILE}" "${URL}"

if [ $? -eq 0 ]; then
    echo "Successfully downloaded ${FILE}"
else
    echo "Failed to download ${FILE}"
    exit 1
fi
