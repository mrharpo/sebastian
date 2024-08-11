#!/bin/bash
# MUSESCORE="/Applications/MuseScore 4.app/Contents/MacOS/mscore"
MUSESCORE="flatpak run org.musescore.MuseScore"
OUTPUT_DIR=dist

mkdir -p $OUTPUT_DIR

for i in music/*.mscz
do
    FILENAME=$(basename $i)
    CMD="-o $PWD/$OUTPUT_DIR/${FILENAME%.mscz}.pdf $(realpath $i)"
    echo "Rendering: $CMD"
    "$MUSESCORE" $CMD
done
echo "Finished rendering PDFs"
ls -al dist/
