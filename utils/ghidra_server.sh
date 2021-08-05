#!/bin/sh

USERS="admin zie ghidra"
REPO_PATH=/mnt/data/Workspace/ghidra-repos

docker run --rm --name ghidra-server \
       -e GHIDRA_USERS="${USERS}" \
       -v ${REPO_PATH}:/repos \
       -p 13100-13102:13100-13102 \
       --pull always \
       zie87/ghidra-server:latest
