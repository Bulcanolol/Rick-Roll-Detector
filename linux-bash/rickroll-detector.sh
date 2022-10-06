#!/bin/bash

echo "Enter The URL"
read URL
RED='\033[0;31m'
GREEN='\033[0;32m'
content=$(curl -X GET "$URL")
if [[ $content == *"https://youtu.be/dQw4w9WgXcQ"* ]]; then
    printf "${RED}[X] Rick Roll Detected"
else
    printf "${GREEN}[V] Rick Roll Not Found"
fi
sleep 5s

