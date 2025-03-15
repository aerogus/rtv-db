#!/usr/bin/env bash

declare INPUT=$1
declare CCC=${INPUT:0:3}

echo "Création logos"

echo "$INPUT -> $CCC.png"
magick -background none "$INPUT" -resize 300x95 "$CCC.png"

echo "$INPUT -> $CCC.jpg"
magick "$INPUT" -resize 90x80 -gravity center -extent 100x80 "$CCC.jpg"

echo "FIN"
