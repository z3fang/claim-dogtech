#!/bin/bash

while true; do
    response=$(curl -k -f https://www.pilotdog.tech/api/get_eligible_proof?address=0x677af891C34FDa72c5dD9387897444d584bA6d20 2>&1)
    if [[ $response == *"502 Bad Gateway"* ]]; then
        echo "Received Bad Gateway error. Retrying in 60 seconds..."
        sleep 60
    else
        echo "Request successful."
        # Do something with the response (e.g., update the file)
        echo "$response" >> Update.tsx
        break
    fi
done
