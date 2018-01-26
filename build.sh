#!/usr/bin/env bash

# Ubuntu
ubuntu/build-releases.sh current
ubuntu/build-releases.sh end-of-life
ubuntu/build-rubies.sh current
ubuntu/build-rubies.sh end-of-life
