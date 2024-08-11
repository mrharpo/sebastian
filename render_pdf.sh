#!/bin/bash
# MUSESCORE="/Applications/MuseScore 4.app/Contents/MacOS/mscore"
MUSESCORE="flatpak run org.musescore.MuseScore"
OUTPUT_DIR=dist

mkdir -p $OUTPUT_DIR

for i in music/*.mscz
do
    FILENAME="$(basename $i)"
    OUTPUT_FILE="$PWD/$OUTPUT_DIR/${FILENAME%.mscz}.pdf"
    echo "CMD: $MUSESCORE -o $OUTPUT_FILE $(realpath $i)"
    "$MUSESCORE" "-o" "$OUTPUT_FILE" "$(realpath $i)"
done
echo "Finished rendering PDFs"
ls -al dist/
