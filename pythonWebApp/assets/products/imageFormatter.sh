#!/bin/bash
for element in $(ls ./originals/)
do
echo $element
convert "./originals/$element" -resize 200x200! $element
done