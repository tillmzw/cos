#!/bin/bash

test -d ./themes/terminal/.git || git submodule update

podman run --rm \
  -p 8080:8080 \
  -v ${PWD}:/src \
  hugomods/hugo:exts-non-root \
  server -p 8080

open http://localhost:8080/cos