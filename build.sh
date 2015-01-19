#!/bin/bash

if [ ! -f installation.zip ]; then
  cd installation_build
  zip -r ../installation.zip installation
  cd ..
fi
