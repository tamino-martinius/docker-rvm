#!/usr/bin/env bash

# Ubuntu
ubuntu/build-releases.sh current
ubuntu/push-releases.sh current

ubuntu/build-releases.sh end-of-life
ubuntu/push-releases.sh end-of-life

ubuntu/build-rubies.sh current
ubuntu/push-rubies.sh current

ubuntu/build-rubies.sh end-of-life
ubuntu/push-rubies.sh end-of-life

ubuntu/push-latest.sh
