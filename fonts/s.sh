mkdir -p otf
for f in *.woff; do
  fontforge -lang=ff -c 'Open($1); Generate($2);' "$f" "otf/$(basename "${f%.woff}.otf")"
done
