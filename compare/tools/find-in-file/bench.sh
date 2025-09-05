#!/bin/bash

sudo hyperfine --warmup 3 \
	  -N \
	  --min-runs 100 \
	  --export-markdown results.MD \
	  --export-json results.json \
	  "find /etc -type f -exec grep password {} \;" \
	  "rg -uuu password /etc" \
