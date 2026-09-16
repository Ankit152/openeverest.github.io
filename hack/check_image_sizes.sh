#!/usr/bin/env bash
#
# Fails if any image under content/ exceeds the size limit.
# Usage:
#   ./hack/check_image_sizes.sh [file ...]   # check specific files
#   ./hack/check_image_sizes.sh              # scan all images under content/
# Configure the limit with the MAX_IMAGE_KB environment variable (default 1024).
set -euo pipefail

MAX_KB="${MAX_IMAGE_KB:-1024}"
MAX_BYTES=$((MAX_KB * 1024))

check_file() {
  f="$1"
  [ -f "$f" ] || return 0
  case "$f" in
    *.png|*.PNG|*.jpg|*.JPG|*.jpeg|*.JPEG|*.gif|*.GIF|*.webp|*.WEBP|*.svg|*.SVG) ;;
    *) return 0 ;;
  esac
  bytes=$(wc -c < "$f" | tr -d ' ')
  if [ "$bytes" -gt "$MAX_BYTES" ]; then
    kb=$(( (bytes + 1023) / 1024 ))
    printf '  [TOO BIG] %s - %d KB (limit %d KB)\n' "$f" "$kb" "$MAX_KB"
    return 1
  fi
  return 0
}

oversized=0

if [ "$#" -gt 0 ]; then
  for f in "$@"; do
    check_file "$f" || oversized=$((oversized + 1))
  done
else
  while IFS= read -r f; do
    check_file "$f" || oversized=$((oversized + 1))
  done < <(find content -type f \( \
    -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \
    -o -iname '*.gif' -o -iname '*.webp' -o -iname '*.svg' \) 2>/dev/null)
fi

if [ "$oversized" -gt 0 ]; then
  echo ""
  echo "$oversized image(s) exceed the ${MAX_KB} KB limit."
  echo "Please optimize them (resize, compress, or convert to WebP) before merging."
  exit 1
fi

echo "All checked images are within the ${MAX_KB} KB limit."
