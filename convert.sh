#!/bin/sh

rm -rf svg/tmp
mkdir -p svg/tmp
cp svg/src/* svg/tmp

mkdir -p png/auto-convert/
rm -rf png/auto-convert/*

mkdir -p svg/outlined/
rm -rf svg/outlined/*

for f in svg/tmp/*.svg; do
    
    filename=$(basename -- "$f")
    filename_without_ext="${filename%.*}"

    echo "Convert $filename"
    #Export as 16px and 32px
    inkscape --export-type="png" --export-width=16 --export-filename=png/auto-convert/${filename_without_ext}_16.png $f
    inkscape --export-type="png" --export-width=32 --export-filename=png/auto-convert/${filename_without_ext}_32.png $f
    
    # Reduce the stroke on images on large images
    sed -i "s/stroke-width:1/stroke-width:0.7/g" $f

    # Export to clean and text-outlined plain svg
    inkscape --export-type="svg" --export-plain-svg --export-text-to-path --export-filename=svg/outlined/${filename_without_ext}.svg $f

    # Export to png in different sizes
    inkscape --export-type="png" --export-width=64 --export-filename=png/auto-convert/${filename_without_ext}_64.png $f
    inkscape --export-type="png" --export-width=128 --export-filename=png/auto-convert/${filename_without_ext}_128.png $f

done

rm -rf svg/tmp