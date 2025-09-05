#!/bin/bash

arch_array=("x86-64" "x86-64-v2" "x86-64-v3" "x86-64-v4" "znver4")

# Loop through the array elements
for ARCH in "${arch_array[@]}"; do
  echo "Arch: $ARCH"
  podman rmi fastfetch:$ARCH
  podman build . -t localhost/fastfetch:$ARCH --build-arg ARCH=$ARCH
  podman create --name fastfetch-$ARCH-temp localhost/fastfetch:$ARCH
  podman cp fastfetch-$ARCH-temp:/root/fastfetch/build/fastfetch ./fastfetch-$ARCH
  podman rm fastfetch-$ARCH-temp
done
