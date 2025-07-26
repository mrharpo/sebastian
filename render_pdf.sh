#!/bin/bash
MUSESCORE=mscore
SCORE_DIR=music
OUT_DIR=dist

mkdir -p "$OUT_DIR"

SUCCESS=0
for i in $(ls $SCORE_DIR/*.mscz)
do
    FILENAME=$(basename $i)
    echo "Rendering: $FILENAME"
    "$MUSESCORE" -o "$OUT_DIR/${FILENAME%.mscz}.pdf" "$i" && SUCCESS=$((SUCCESS + 1)) || echo "Failed to render $FILENAME"
done

$(ls -l "$OUT_DIR")
echo "Finished rendering $SUCCESS PDFs"
