#!/bin/bash
IMAGENAME=localhost/shawngmc/find-in-files:latest
CONTAINERNAME=bench-find-in-files
podman rmi -i "${IMAGENAME}"
podman build -t "${IMAGENAME}" .
podman create --name "${CONTAINERNAME}" "${IMAGENAME}"
podman start -a "${CONTAINERNAME}"
podman cp "${CONTAINERNAME}:/root/results.json" ./
podman cp "${CONTAINERNAME}:/root/results.MD" ./
podman rm "${CONTAINERNAME}"
podman rmi "${IMAGENAME}"
