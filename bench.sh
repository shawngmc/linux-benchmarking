#!/bin/bash

hyperfine -N -L arch x86-64,x86-64-v2,x86-64-v3,x86-64-v4,znver4 ./fastfetch-{arch} --min-runs 10000 --export-markdown results.MD --export-json results.json
