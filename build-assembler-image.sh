#!/bin/bash
set -x

docker build -t markformware/assembler-gitpod -f assembler-gitpod.dockerfile . |& tee build.log
