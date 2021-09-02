#!/usr/bin/env sh
[ ! -d "./resources" ] && mkdir "./resources"
[ ! -d "./resources/temp" ] && mkdir "./resources/temp"

HOLOCHAIN_VER="f3d17d993ad8d988402cc01d73a0095484efbabb"

echo "Getting holochain from GitHub"

[ ! -d "./resources/temp/lair" ] && git clone https://github.com/holochain/lair ./resources/temp/lair
[ ! -d "./resources/temp/holochain" ] && git clone https://github.com/holochain/holochain ./resources/temp/holochain

cd ./resources/temp/holochain && git checkout $HOLOCHAIN_VER