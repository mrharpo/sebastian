#!/bin/bash
MUSESCORE=mscore

for i in music/*.mscz
do
    echo "Rendering: $i"
    "$MUSESCORE" -o "dist/${i%.mscz}.pdf" "$i"
done
echo "Finished rendering PDFs"
ls -al dist/
