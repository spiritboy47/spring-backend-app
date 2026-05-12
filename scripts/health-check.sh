#!/bin/bash

URL="http://localhost:8080/actuator/health"

STATUS=$(curl -s $URL)

echo $STATUS

if [[ $STATUS == *"UP"* ]]; then
    echo "Application is healthy"
    exit 0
else
    echo "Application is unhealthy"
    exit 1
fi