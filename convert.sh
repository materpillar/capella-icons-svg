#!/bin/sh

mkdir -p png/auto-convert/
mkdir -p svg/outlined/

for f in svg/opensource-font/*.svg; do
    
    filename=$(basename -- "$f")
    filename_without_ext="${filename%.*}"

    echo "Convert $filename"

    # Export to clean and text-outlined plain svg
    inkscape --export-type="svg" --export-plain-svg --export-text-to-path --export-filename=svg/outlined/${filename_without_ext}.svg $f

    # Export to png in different sizes
    inkscape --export-type="png" --export-height=128 --export-filename=png/auto-convert/${filename_without_ext}_128.png $f
    inkscape --export-type="png" --export-height=64 --export-filename=png/auto-convert/${filename_without_ext}_64.png $f
    inkscape --export-type="png" --export-height=32 --export-filename=png/auto-convert/${filename_without_ext}_32.png $f

done

