#!/bin/bash
MUSESCORE="flatpak run org.musescore.MuseScore"
OUTPUT_DIR=dist

mkdir -p $OUTPUT_DIR


for i in music/*.mscz
do
    echo "Rendering: $i"
    "$MUSESCORE" -o "$OUTPUT_DIR/${i%.mscz}.pdf" "$i"
done
echo "Finished rendering PDFs"
ls -al dist/
