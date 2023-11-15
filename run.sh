#!/bin/bash

while true; do
    response=$(curl -k -f https://pilotdog.tech/api/get_eligible_proof?address=0x3F2fAA1fFe94f312c7fA2b61E3c2737ad517C162 2>&1)
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
