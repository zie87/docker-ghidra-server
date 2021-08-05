#!/bin/sh

docker run --rm --name ghidra-server \
	   -e GHIDRA_USERS="ubuntu another_user" \
	   -v /usr/local/ghidra/ghidra_collab:/repos \
	   -p 13100-13102:13100-13102 \
	   zie87/ghidra-server:latest
