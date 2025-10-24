#!/bin/bash
# Скрипт створює директорію з поточною датою

DIRNAME=$(date +%F)

if [ -d "$DIRNAME" ]; then
  echo "Directory exists: $DIRNAME"
else
  mkdir "$DIRNAME"
  echo "Directory created: $DIRNAME"
fi

