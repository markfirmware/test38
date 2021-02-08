#!/bin/sh
set -e

arm-ultibo-as -mfloat-abi=hard -meabi=5 -march=armv7-a -mfpu=vfpv3 -o HelloWorld.o  HelloWorld.s
