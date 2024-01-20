#!/bin/bash
for i in music/*.mscz; do
    echo "Rendering: $i"
    mscore -o "dist/${i%.mscz}.pdf" "$i"
done
