#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WC="$(wc -w <  "${f}")"
    echo "Processing $f file..."
    echo "File Size: $SIZE\nWord Count: $WC"
  fi
done

