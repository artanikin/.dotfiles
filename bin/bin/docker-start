#!/bin/sh

if ! $(docker info > /dev/null 2>&1); then
  echo "Opening Docker for Mac..."
  open -a /Applications/Docker.app
  while ! docker system info > /dev/null 2>&1; do sleep 1; done
  echo "Docker is ready to rock!"
else
  echo "Docker is up and running."
fi
