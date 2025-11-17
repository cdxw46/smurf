#!/bin/bash
LD_PRELOAD=./libc.so.6 exec ./ld-2.29.so ./zero_to_hero "$@"
