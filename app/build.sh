#!/bin/bash
docker build --target build -t dojo:build .
docker build --target deploy -t dojo:deploy .
docker image prune -f
