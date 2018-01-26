#!/usr/bin/env bash

# Ubuntu
ubuntu/push-releases.sh current
ubuntu/push-releases.sh end-of-life
ubuntu/push-rubies.sh current
ubuntu/push-rubies.sh end-of-life
ubuntu/push-latest.sh
