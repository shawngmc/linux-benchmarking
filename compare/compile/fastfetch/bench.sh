#!/bin/bash

hyperfine --warmup 3 \
	  -N \
	  -L arch x86-64,x86-64-v2,x86-64-v3,x86-64-v4,znver4 \
	  --min-runs 100 \
	  --export-markdown results.MD \
	  --export-json results.json \
	  './fastfetch-{arch} -c all.jsonc'
